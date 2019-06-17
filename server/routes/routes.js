const mysql = require('../config/mysql');

const date = require('date-and-time');

const bodyParser = require('body-parser');
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
   extended: true
}));

module.exports = (app) => {

   app.get('/', async (req, res, next) => {
      let db = await mysql.connect();
      let [categories] = await db.execute('SELECT * FROM categories');
      db.end();
      
      res.render('home', {
         'categories': categories
      });
   });


   app.get('/category/:category_id', async (req, res, next) => {
      let db = await mysql.connect();

      let [selectedCategory] = await db.execute(`
      SELECT *
      FROM categories
      WHERE category_id = ?
      `, [req.params.category_id]);

      let [categories] = await db.execute('SELECT * FROM categories'); // Tilhører Navigationen
      // let [articles] = await db.execute('SELECT * FROM articles WHERE fk_category_id = ?', [req.params.category_id]);
      
      let [articles] = await db.execute(`
         SELECT
            article_image,
            category_title,
            article_title,
            author_name,
            article_text,
            article_likes,
            article_id

         FROM articles 
         INNER JOIN categories ON fk_category_id = category_id
         INNER JOIN authors ON fk_author_id = author_id
         WHERE fk_category_id = ?
      `, [req.params.category_id]);
   
      db.end();
      
      res.render('categories-post', {
         'categories': categories,
         'articles': articles,
         'selectedCategory': selectedCategory[0] // From categories => category_id => [req.params.category_id]
      });
   });


   app.get('/single-post/:article_id', async (req, res, next) => {
      let db = await mysql.connect();

      console.log(req.params.article_id)

      let [categories] = await db.execute('SELECT * FROM categories');
      let [comments] = await db.execute(`
      SELECT *
      FROM comments
      `);
      
      // let [articles] = await db.execute(`SELECT article_title FROM articles WHERE article_id = ${req.params.article_id}`); // Pas på med denne version pga. SQL injections

      let [articles] = await db.execute(`
      SELECT
         *
      FROM articles
      INNER JOIN authors
      ON fk_author_id = author_id
      WHERE article_id = ?`

      , [req.params.article_id]);
      
      db.end();

      res.render('single-post', {
         'categories': categories,
         'article': articles[0],
         'comments': comments
      });

   });



   app.get('/about', (req, res, next) => {
      res.render('about');
   });


   app.get('/contact', (req, res, next) => {
      res.render('contact');
   });

   app.post('/contact', async (req, res, next) => {

      let db = await mysql.connect();
      let result = await db.execute(`
         INSERT INTO messages 
            (message_name, message_email, message_subject, message_text, message_date) 
         VALUES 
            (?,?,?,?,?)`, [name, email, subject, message, contactDate]);
      db.end();

      if (result[0].affectedRows > 0) {
         return_message.push('Tak for din besked, vi vender tilbage hurtigst muligt');
      } else {
         return_message.push('Din besked blev ikke modtaget.... ');
      }
      
      let categories = await getCategories(); 
      res.render('contact', {
         'categories': categories,
         'return_message': return_message.join(', '),
         'values': req.body
      });

      let name = req.body.name;
      let email = req.body.email;
      let subject = req.body.subject;
      let message = req.body.message;
      let contactDate = new Date();
   
      let return_message = [];
      if (name == undefined || name == '') {
         return_message.push('Navn mangler');
      }
      if (email == undefined || email == '') {
         return_message.push('Email mangler');
      }
      if (subject == undefined || subject == '') {
         return_message.push('Emne mangler');
      }
      if (message == undefined || message == '') {
         return_message.push('Beskedteksten mangler');
      }
   
      if (return_message.length > 0) {
         let categories = await getCategories();
         res.render('contact', {
            'categories': categories,
            'return_message': return_message.join(', '),
            'values': req.body
         });
      
      } else {
         res.send(req.body);
      }
      
   });

};