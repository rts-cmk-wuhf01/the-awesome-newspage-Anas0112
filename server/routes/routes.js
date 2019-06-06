const mysql = require('../config/mysql');

const date = require('date-and-time');

module.exports = (app) => {

   app.get('/database',  async (req,res,next)=>{
      let db = await mysql.connect();
      let [products] = await db.execute('SELECT * FROM products');
      let [games] = await db.execute('SELECT * FROM games');
      db.end();

      res.render('products', {
         'products': products,
         'games': games,
      });
   });

   app.get('/', (req, res, next) => {

      let now = new Date('2019-04-14 07:00:14');

      res.render('home');
   });


   app.get('/categories-post', (req, res, next) => {

      let now = new Date('2019-04-14 07:00:14');

      res.render('categories-post');
   });


   app.get('/single-post', (req, res, next) => {
      res.render('single-post');
   });


   app.get('/about', (req, res, next) => {
      res.render('about');
   });


   app.get('/contact', (req, res, next) => {
      res.render('contact');
   });

};