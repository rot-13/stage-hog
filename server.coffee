express = require('express')
db = require('./db')()
app = express()

app.get '/', (req, resp) ->
  resp.send('hello')

app.get '/environments', (req, resp) ->
  resp.send()

app.listen(8888)