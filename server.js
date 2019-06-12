const express = require('express')
const app = express()
const port = 8080
// const axios = require('axios')
const pgp = require('pg-promise')()
var db = pgp({
    database: 'athletes',
    password: process.env["zendesk_password"]
})

app.set('view engine', 'ejs')

app.use(express.static('public'))

app.get('/', (req, res) => {
    db.any('SELECT * FROM profiles')
    .then(function(profiles) {
        res.render('home', { profiles })
    })
})


app.get('/climber', (req, res) => {
    db.any(`SELECT * from profiles inner join results on profiles.id = results.profile_id where profile_id=${req.query.id}`)
    .then(function(results){    
        res.render('climber', { results })
    })
})
//searh includes
// .then(function(result){
            
// })

// making the request but it is asynchronous therefore get back a promise.  when it completes (think promise queue) then will render the page with the information

app.listen(port, () => {
    console.log(`listening ${port}`)
})