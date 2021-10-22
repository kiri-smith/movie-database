const express = require("express");
const mysql = require("mysql2");

const PORT = process.env.PORT || 3001;
const app = express();

app.use(express.urlencoded({ extended: false }));
app.use(express.json());

const db = mysql.createConnection(
    {
        host: "localhost",
        user: "root",
        password: "password",
        database: "movie_db"
    },
    console.log('Connected to movie_db')
);

app.get("/api/movies", (req, res) => {
    db.query("SELECT * FROM movies", function (err, results) {
        res.send(results)
    })
})

app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});