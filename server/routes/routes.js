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


   app.get('/categories-post/:category_id', async (req, res, next) => {
      
      res.send(req.params.category_id);
   });


   app.get('/about', (req, res, next) => {
      res.render('about');
   });


   app.get('/contact', (req, res, next) => {
      res.render('contact');
   });




   app.get('/testdatabase',  async (req,res,next)=>{
      let db = await mysql.connect();
      let [products] = await db.execute('SELECT * FROM products INNER JOIN categories ON category_id = fk_category_id');
      let [games] = await db.execute('SELECT * FROM games');
      db.end();

      res.render('products', {
         'products': products,
         'games': games,
      });
   });



};