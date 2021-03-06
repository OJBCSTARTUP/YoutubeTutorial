var express = require('express');
var bodyParser = require ('body-parser');
var app = express();
app.all('*',function(req, res, next){
    res.header("Access-Control-Allow-Origin","*");
    res.header("Access-Control-Allow-Header","X-Requested-With","Content-Type,Accept");
    res.header("Access-Control-Allow-Methods","POST,GET");
    next();
});

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended:false}));

var tutorials = [
{
  id:1,
  title:"Devslopes - Standup",
  discription:"Discussing our progress and other awesome stuff.",
  iframe:'<iframe width="560" height="315" src="https://www.youtube.com/embed/tBJ3UlZuLfU" frameborder="0" allowfullscreen></iframe>',
  thumbnail:"https://fscl01.fonpit.de/userfiles/7021684/image/Kamera_E_1-max628x465.jpg"
},
{
  id:2,
  title:"Vaardin - Standup",
  discription:"User interface components for web apps",
  iframe:'<iframe width="560" height="315" src="https://www.youtube.com/embed/Ko_dgZkhOPM" frameborder="0" allowfullscreen></iframe>',
  thumbnail:"https://vaadin.com/documents/10187/2487938/Sampler/83c3734d-ff31-4f7c-8fa8-76630f447daa?t=1411634234983"
},
{
  id:3,
  title:"Laravel - Standup",
  discription:"The Laravel framework has a few system requirement.",
  iframe:'<iframe width="560" height="315" src="https://www.youtube.com/embed/lnf1GdNxDbc?list=PL_UnIDIwT95NUvLU14l_QFFV2ZxO1phpQ" frameborder="0" allowfullscreen></iframe>',
  thumbnail:"https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/LaravelLogo.png/1200px-LaravelLogo.png"
}
];

app.get('/tutorials',function(req,res){
  console.log("GET from Server");
  res.send(tutorials);
});
app.listen(6069);
