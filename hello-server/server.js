var express = require('express');
var axios = require('axios')

var app = express();

app.get('/test', function (req, res) {
  axios.get('http://foobar-service.default.svc.cluster.local:90/')
    .then(resp => {
      const {data} = resp
      res.send(data);
    })
    .catch(err => {
      res.send(`Error lol ${JSON.stringify(err)}`)
    })

});
app.get('/', function (req, res) {
  res.send('Hello from hello-server');
});

app.listen(8080, function () {
  console.log('Example app listening on port 3000!');
});