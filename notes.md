## when begining a new a new project

<!-- (In Terminal) -->
git init
npm init
npm install express bcrypt pg-promise ejs 
npm install --sav-dev nodemon

<!-- (Notice 1k+ pending changes in left bar) -->
create .gitignore file
type in node_modules

<!-- (In Terminal when using downloaded project/update our packages) -->
npm install

<!-- (Begin lines of code for index.js) -->
const express = require('express')
const app = express()

// BODY PARSER
app.use(express.urlencoded({extended: false}))
app.use(express.json())

// VIEW ENGINE
app.set('view engine', 'ejs')

app.get('/', (req, res) => {
  res.render('pages/index', {
    name: "Cat"
  })
})


const PORT = process.env.PORT || 3000
app.listen(PORT, () => console.log(`App is listening on http://localhost:${PORT}`))