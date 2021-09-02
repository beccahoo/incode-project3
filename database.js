const pgp = require ('pg-promise') ()

const database = 'test_posts'

const connection = 'postgres://postgres:mao=)sun@localhost:5432/database' + database

const db = pgp(connection)

module.exports = db

