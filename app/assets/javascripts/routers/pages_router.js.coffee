class SMerchPro.Routers.Pages extends Backbone.Router
	routes:
    '': 'index'
    'about': 'about'
		
	index: ->
    intro_view = new SMerchPro.Views.PagesIntro()
    links_view = new SMerchPro.Views.PagesLinks()
    $('.intro').append(intro_view.render().el)
    $('.links').append(links_view.render().el)
	    
	about: ->
	  alert "Hopefully"