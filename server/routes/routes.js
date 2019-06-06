const mysql = require('../config/mysql');

const date = require('date-and-time');

module.exports = (app) => {

   app.get('/', (req, res, next) => {

      let now = new Date('2019-04-14 07:00:14');

      res.render('home', {
         "fisk": 20
      });
   });


   app.get('/categories-post', (req, res, next) => {

      res.render('categories-post');
   });


   app.get('/about', (req, res, next) => {
      res.render('about');
   });


   app.get('/contact', (req, res, next) => {
      res.render('contact');
   });





   app.get('/testdatabase',  async (req,res,next)=>{
      let db = await mysql.connect();
      let [products] = await db.execute('SELECT * FROM products');
      let [games] = await db.execute('SELECT * FROM games');
      db.end();

      res.render('products', {
         'products': products,
         'games': games,
      });
   });

   app.get('/test', (req, res, next) => {
      // Test global.oplysning i EJS
      res.render('testa');
   });




};