const express = require('express')
const app = express()
const exphbs = require('express-handlebars')

const connection = require('./database')

const port = process.env.PORT || 3000

const session = require("express-session")
app.use(session ({
    secret: "Secreto",
    resave: false,
    saveUninitialized: true,
    cookie: { secure: true}
}))

const bcrypt = require("bcrypt")

const passport = require("passport")
const LocalStrategy = require("passport-local").Strategy

passport.use("local.signup", new LocalStrategy({
    usernameField: "email",
    passwordField: "password"
}, async (username, password, done) => {
    const salt = await bcrypt.genSalt(10)
    const hash = await bcrypt.hash(password, salt)

    const user = {
        email:username,
        password:hash
    }

    const result = await connection.query('INSERT INTO users SET ?', user)
    user.id = result.insertId
    done(null, user)

    console.log(username, password, hash, result)
}))

passport.serializeUser((user, done) => {
    done(null, user.id)
})

passport.deserializeUser( async (id,donde) => {
    const rows = await connection.query(`SELECT * FROM users WHERE id = ${id}`)
    done(null, rows[0])
})

app.use(passport.initialize())
app.use(passport.session())

app.use(express.urlencoded({extended: false}))

app.engine('.hbs', exphbs())
app.set('view engine', '.hbs')

app.use(require("./routes/index"))
app.use(require("./routes/auth"))


app.listen(port, () => {
    console.log(`http://localhost:${port}`)
})

//connection.end()