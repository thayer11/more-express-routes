var express = require('express');
var app     = express();
var port    = process.env.PORT || 3000;

var burgers = [
                "Hamburger",
                "Cheese Burger",
                "Dble Cheese Burger"
               ];

var tacos = [
                "Soft Taco",
                "Crunchy Taco",
                "Super Taco"
               ];


app.get("/pickanumber", function (req, res) {
   var number = parseInt(req.query.number);
    var correctAnswer = 7;
    if (number === correctAnswer) {
        res.send("Nailed It!");
    } else if (number < correctAnswer) {
        res.send("Too Low!");
    } else {
        res.send("Too High!");
    }   
        res.send("You picked " + number + "!");
});

app.get("/", function (req, res) {
res.send("Hello World");
});

app.get("/pick_a_color/:color", function (req, res) {
var color = req.params.color;     
res.send("Your color is " + color);
});

app.get("/tacos/:index", function (req, res) {
var index = req.params.index;           
var choice = tacos[index]
res.send(choice);
});

app.listen(3000, function () {
    console.log("Go to localhost:3000/");
});
//....//