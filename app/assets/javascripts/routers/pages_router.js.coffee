class SMerchPro.Routers.Pages extends Backbone.Router
	routes:
    '': 'index'
		
	index: ->
    intro_view = new SMerchPro.Views.PagesIntro()
    links_view = new SMerchPro.Views.PagesLinks()
    info_view = new SMerchPro.Views.PagesInfo()
    $('.intro').html(intro_view.render().el)
    $('.links').html(links_view.render().el)
    $('.site_info').html(info_view.render().el)
    setTimeout ( -> $('#learn').removeClass("pre").addClass("post")), 200
    setTimeout ( -> $('#grow').removeClass("pre").addClass("post")), 800
    setTimeout ( -> $('#build').removeClass("pre").addClass("post")), 1400  