module.exports = (app) => {

   const date = require('date-and-time');

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