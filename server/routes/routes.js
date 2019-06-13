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
            article_likes

         FROM articles 
         INNER JOIN categories ON fk_category_id = category_id
         INNER JOIN authors ON fk_author_id = author_id
         WHERE fk_category_id = ?
      `, [req.params.category_id]);
   
      db.end();
      
      res.render('categories-post', {
         'categories': categories,
         'articles': articles,
         'selectedCategory': selectedCategory[0], // From categories => category_id => [req.params.category_id]
      });
   });



   app.get('/about', (req, res, next) => {
      res.render('about');
   });


   app.get('/contact', (req, res, next) => {
      res.render('contact');
   });



   // app.get('/testdatabase',  async (req,res,next)=>{
   //    let db = await mysql.connect();
   //    let [products] = await db.execute('SELECT * FROM products INNER JOIN categories ON category_id = fk_category_id');
   //    let [games] = await db.execute('SELECT * FROM games');
   //    db.end();

   //    res.render('products', {
   //       'products': products,
   //       'games': games,
   //    });
   // });



};