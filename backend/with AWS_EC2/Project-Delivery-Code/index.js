const mysql = require("mysql");
const express = require("express");
const cors = require("cors");

const app = express();
app.use(cors());
app.use(express.json({ limit: "50mb" }));

function createUserModel(data) {
  let newUser = {
    email: data.email,
    password: data.password,
    phone: data.phone,
  };
  return newUser;
}

function userinfo(req) {
  let newUser = {
    email: req.email,
    password: req.password,
  };
  return user;
}


app.post("/sign-up", async (req, res) => {
  const con = mysql.createConnection({
    host: "database-1.chtjh5xji5nw.eu-west-2.rds.amazonaws.com",
    user: "admin",
    password: "adm-password",
    port: 3306,
    database: "clud_car",
  });
  try {
    let data = createUserModel(req.body);
    if (!data.email || !data.password || !data.phone) {
      return res.status(400).send({ result: "Email, phone and password fields are required" });
    }
    con.connect(function (err) {
      if (err) throw err;
      con.query(`SELECT * FROM users where email='${data.email}'`, function (err, result, fields) {
        if (err) {
          console.log(err);
          con.end();
          return res.status(500).send({ result: "Server error" });
        } else {
          if (result.length > 0) {
            con.end();
            return res.status(400).send({ result: "Email already registered" });
          } else {
            let insertString = "INSERT INTO users (email,password,phone) VALUES ('" + data.email + "','" + data.password + "','" + data.phone + "')";
            con.query(insertString, function (err, result, fields) {
              if (err) {
                console.log(err);
                con.end();
                return res.status(500).send({ result: "Enter valid details" });
              } else {
                con.end();
                res.status(200).send({ result: "User registered" });
              }
            });
          }
        }
      });
    });
  } catch (e) {
    console.log(e);
    return res.status(500).send({ result: "Server error" });
  }
});

app.post("/sign-in", async (req, res) => {
  const con = mysql.createConnection({
    host: "database-1.chtjh5xji5nw.eu-west-2.rds.amazonaws.com",
    user: "admin",
    password: "adm-password",
    port: 3306,
    database: "clud_car",
  });
  try {
    let data = userinfo(req.body);
    if(!data.email || !data.password){
      return res.status(400).send({ result: "Email and password fields are required " })
    }
    con.connect(function (err) {
      if (err) throw err;
      con.query(`SELECT * FROM users where email='${data.email}'`, function (err, result, fields) {
        if (err) {
          console.log(err);
          con.end();
          return res.status(500).send({ result: "Server error" });
        } else {
          if (result.length > 0) {
            con.end();
            return res.status(400).send({ result: "true" });
          } 
        }
      });
    });
  } catch (e) {
    console.log(e);
    return res.status(500).send({ result: "Server error" });
  }
});

app.post("/forgotpwd", async (req, res) => {
  const con = mysql.createConnection({
    host: "database-1.chtjh5xji5nw.eu-west-2.rds.amazonaws.com",
    user: "admin",
    password: "adm-password",
    port: 3306,
    database: "clud_car",
  });
  try {
    let data = userinfo(req.body);
    if(!data){
      return res.status(400).send({ result: "Email fields are required " })
    }
    con.connect(function (err) {
      if (err) throw err;
      con.query(`SELECT password FROM users where email='${data}'`, function (err, result, fields) {
        if (err) {
          console.log(err);
          con.end();
          return res.status(500).send({ result: "Server error" });
        } else {
          if (result.length > 0) {
            con.end();
            return res.status(400).send({ result: "true" });
          } 
        }
      });
    });
  } catch (e) {
    console.log(e);
    return res.status(500).send({ result: "Server error" });
  }
});



function exists(result, data) {
  for (let user of result) if (user.email.toLowerCase() == data.email.toLowerCase()) return true;
  return false;
}

app.listen(3000, () => {
  console.log("Server Up");
});
