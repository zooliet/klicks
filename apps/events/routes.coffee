
sprintf = require('sprintf').sprintf

routes = (app) ->
	app.get '/events', (req, res) ->
		res.render "#{__dirname}/views/events",
			title: "Events"
			stylesheet: "events"
			
		app.post '/events', (req, res) ->
			send_result = ->
				# number = Math.floor(Math.random()*100)
				number = sprintf("%09d", Math.floor(Math.random()*100000))
				res.json(msg: number )
			setTimeout send_result, 1000*1
			# res.json msg: "OK"
			
module.exports = routes