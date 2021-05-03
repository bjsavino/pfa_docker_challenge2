const express = require('express');
const mysql = require('mysql2');
const path = require('path');

const configMysql = {
    host:"mysql",
    user:"root",
    password:"root",
    database:"nodedb",
    charset:'utf8'
}

app = express();
app.set('views',path.join(__dirname, 'pages'));
app.set('view engine', 'ejs');

app.get('/', async function(req, res) {
    var connection = await mysql.createConnection(configMysql);
    await connection.connect();
    connection.query("SELECT * FROM modulos", async (error, results, fields) => {
        res.render('index',{modulos:results})
    });
    connection.end();
    
});

app.listen(3000,()=>console.log("rodando"));