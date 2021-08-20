const express = require('express')
const app = express()
const port = 3000

//GET request
app.get('/', (req, res) => {
  res.send('Hello World!')
})

//POST request

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})