
routes = (app) ->
	app.get '/dummy', (req, res) ->
		res.render "#{__dirname}/views/dummy",
			title: "Dummy Page"
			stylesheet: "dummy"
			
module.exports = routes