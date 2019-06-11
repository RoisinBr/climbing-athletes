const express = require('express')
const app = express()
const port = 8080
// const axios = require('axios')
const pgp = require('pg-promise')()
var db = pgp({
    database: 'networking',
    password: process.env["zendesk_password"]
})


// db.any('SELECT * FROM profiles')
//     .then(function(profile) {
//       console.log(profile[0])
//     })

app.set('view engine', 'ejs')

app.use(express.static('public'))

app.get('/', (req, res) => {
    res.render('home')
})

app.listen(port, () => {
    console.log(`listening ${port}`)
})