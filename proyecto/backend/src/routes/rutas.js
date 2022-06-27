const routes = require('express').Router();
const consulta=require('../configuracion/conexion_db');

routes.get('/reg',(req,res)=>{
    res.send('ruta login');
});

routes.get('/tese',(require,res)=> {
    let sql = "select * from solicitud"
    
      consulta.query(sql, (err, rows) => {
        if (!err) res.json(rows)
        else
            console.error(err);

    });
});


module.exports = routes;

