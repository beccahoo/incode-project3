const express = require('express');
const router = express.Router();
const db = require('../database');
const bcrypt = require('bcryptjs');
const data = require('../data')

//Display schedules
router.get("/", (req, res) => {
    db.any('SELECT * FROM schedules')
        .then(function(databaseschedules) {
            console.log(databaseschedules)
            res.render('pages/schedules', {
                schedules:databaseschedules
              });
        })
        
        .catch(function(error) {
            console.log(error)
        });
    });
    
    router.get('/', (req, res) => {
        res.render('pages/home');
})



module.exports = router;
//     console.log(test_schedules)
//     res.render('pages/schedules', {
//       schedules:data.schedules, users:data.users
//     });