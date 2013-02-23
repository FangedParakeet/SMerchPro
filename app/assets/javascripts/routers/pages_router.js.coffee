class SMerchPro.Routers.Pages extends Backbone.Router
	routes:
    '': 'index'
		
	index: ->
	  for elt in ["learn", "build", "grow"]
	    view = new SMerchPro.Views.PagesIndex(collection: elt)
	    $('.intro').append(view.render().el)	  