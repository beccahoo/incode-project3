const express = require("express");
const bcrypt = require("bcryptjs");
const app = express();
const port = process.env.port || 3000;
const data = require("./data");

//Body Parser
app.use(express.json());
app.use(express.urlencoded({ extended: false }));

//GET request || Homepage
app.get("/", (req, res) => {
  res.send("Welcome to our schedule website");
});

//Displays all users
app.get("/users", (req, res) => {
  res.json(data.users);
});
app.get("/users/:id", (req, res) => {
  const found = req.params.id < data.users.length;

  if (found) {
    res.json(data.users[req.params.id]);
  } else {
    res.send("Users not found");
  }

})



/* here i want to add schedules */
app.get ("/schedules", (req, res) => {
  res.json(data.schedules);
})
// else {
//   res.send("Schedules not found");
// })



//Add a new user
app.post("/user", (req, res) => {
  const { firstname, lastname, email, password } = req.body;
  const salt = bcrypt.genSaltSync(10);
  const hash = bcrypt.hashSync(password, salt);
  const newUser = {
    firstname,
    lastname,
    email,
    password: hash,
  };
  data.users.push(newUser);
  res.json(req.body);
});

//Display a single post
app.get("/posts/:id", (req, res) => {
  const found = data.posts.some((posts) => posts.id === Number(req.params.id));

  if (found) {
    res.send(data.posts.filter((posts) => posts.id === Number(req.params.id)));
    res.send(posts[0]);
  } else {
    res.send("Post not found");
  }
});

//POST request
app.listen(port, () => {
  console.log(
    `You're doing amazing! Example app listening at http://localhost:${port}`
  );
});
