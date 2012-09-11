#= require jquery-1.8.1.min.js
#= require underscore-min.js
#= require sprintf-0.7-beta1.js

jQuery ->
	console.log("jQuery started...")
	if window.location.pathname is '/events'
		$('div.target').live "click", (e) -> 
			e.preventDefault()
			w = $(@).parent().width() - $(@).width()
			h = $(@).parent().height() - $(@).height()
			left = Math.floor( Math.random() * w ) 
			top = Math.floor( Math.random() * h ) 
			# console.log("width: #{w}, height: #{h}")
			$(@).hide()
			$.ajax 
				type: 'post'
				dataType: 'json'
				url: '/events'
				success: (result) =>
					console.log(result.msg)
					$(@).css('top', "#{top}px").css('left', "#{left}px").show()
					# $("div#counter table td.#{i}").text(result.msg[i]) for i in [1...9]
					value = ""
					value += $("div#counter table td.#{i}").text() for i in [1...9]
					console.log("GET: #{value}")
					number = sprintf("%09d", parseInt(value) + 1)
					$("div#counter table td.#{i}").text(number[i]) for i in [1...9]
					
	class KlikcsCounter
		get: ->
			value = ""
			value += $("div#counter table td.#{i}").text() for i in [1...9]
			value

		set: (value) ->
			$("div#counter table td.#{i}").text(value[i]) for i in [1...9]
		increase: ->
			
		