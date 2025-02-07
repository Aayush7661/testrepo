const express = require("express");
const app = express();
const bodyParser = require("body-parser");

// Middleware
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

app.get("/", (req, res) => {
  return res.json({ status: true, message: "last time code update" });
});

app.listen(5000, () => {
    console.log(`Server is running on http://localhost:3000`);
});