

routes = (app) ->
	app.get '/events', (req, res) ->
		res.render "#{__dirname}/views/events",
			title: "Events"
			stylesheet: "events"
			
		app.post '/events', (req, res) ->
			send_result = ->
				res.json(msg: "OK")
			setTimeout send_result, 1000*1
			# res.json msg: "OK"
			
module.exports = routes