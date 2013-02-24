class SMerchPro.Routers.Pages extends Backbone.Router
	routes:
    '': 'index'
		
	index: ->
    intro_view = new SMerchPro.Views.PagesIntro()
    links_view = new SMerchPro.Views.PagesLinks()
    $('.intro').html(intro_view.render().el)
    $('.links').html(links_view.render().el)
    spans = document.getElementsByTagName("span")
    setTimeout ( -> $(spans[0]).removeClass("pre").addClass("post")), 200
    setTimeout ( -> $(spans[1]).removeClass("pre").addClass("post")), 800
    setTimeout ( -> $(spans[2]).removeClass("pre").addClass("post")), 1400   