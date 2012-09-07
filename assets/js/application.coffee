#= require jquery-1.8.1.min.js
#= require underscore-min.js

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