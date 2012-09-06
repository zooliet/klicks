

routes = (app) ->
	app.get '/events', (req, res) ->
		res.render "#{__dirname}/views/events",
			title: "Events"
			stylesheet: "events"
			
		app.post '/events', (req, res) ->
			res.json msg: "OK"
			
module.exports = routes