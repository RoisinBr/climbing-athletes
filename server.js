const express = require('express')
const app = express()
const port = process.env.PORT || 8080
// const axios = require('axios')
const pgp = require('pg-promise')()
if (process.env.PRODUCTION) {
    var db = pgp(process.env.DATABASE_URL)
} else {
    var db = pgp({
        database: 'athletes',
        password: process.env["zendesk_password"]
    })    
}

app.set('view engine', 'ejs')

app.use(express.static('public'))

app.get('/', (req, res) => {
    db.any('SELECT * FROM profiles')
    .then(function(profiles) {
        res.render('home', { profiles })
    })
})

app.get('/climber', (req, res) => {
    db.any(`SELECT * FROM profiles WHERE first_name iLIKE '%${req.query.name}%' OR surname iLIKE '%${req.query.name}%'`)
    .then(function(profiles){
        res.json(profiles)
    })
})


app.get('/climber/:id', (req, res) => {
    db.any(`SELECT * from profiles inner join results on profiles.id = results.profile_id where profile_id=${req.params.id}`)
    .then(function(profileResults){    
        res.render('climber', { profileResults })
    })
})

// making the request but it is asynchronous therefore get back a promise.  when it completes (think promise queue) then will render the page with the information

app.listen(port, () => {
    console.log(`listening ${port}`)
})