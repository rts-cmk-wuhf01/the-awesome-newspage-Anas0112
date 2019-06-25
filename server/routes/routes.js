const mysql = require('../config/mysql');

const date = require('date-and-time');

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

      // let navn = "Anas";
      // let text = `mit navn er ${navn}. jeg er 20 år gammel`

      console.log(req.params.article_id)

      let [categories] = await db.execute('SELECT * FROM categories');
      
      // let [articles] = await db.execute(`SELECT article_title FROM articles WHERE article_id = ${req.params.article_id}`); // Pas på med denne version pga. SQL injections

      let [articles] = await db.execute(`
      SELECT *
      FROM articles
      INNER JOIN authors
      ON fk_author_id = author_id
      WHERE article_id = ?`
      , [req.params.article_id]);
      
      db.end();

      console.log(articles);

      res.render('single-post', {
         'categories': categories,
         'article': articles[0]
      });

   });


   app.get('/about', (req, res, next) => {
      res.render('about');
   });


   app.get('/contact', (req, res, next) => {
      res.render('contact');
   });

};