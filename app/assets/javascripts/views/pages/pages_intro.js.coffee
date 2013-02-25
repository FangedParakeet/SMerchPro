class SMerchPro.Views.PagesIntro extends Backbone.View
  
  tagName: 'div'
  
  template: JST['pages/intro']
  
  events:
    'click #learn': 'learn'
    'click #grow': 'grow'
    'click #build': 'build'
      
  render: ->
    $(@el).html(@template())
    this
    
  learn: ->
    view  = new SMerchPro.Views.PagesAbout()
    $('.content').html(view.render().el)
    $('#learn').removeClass("post").addClass("pre")
    setTimeout ( -> $('#grow').removeClass("post").addClass("pre")), 600
    setTimeout ( -> $('#build').removeClass("post").addClass("pre")), 1200
    setTimeout ( -> $('.intro').hide()), 1800
    setTimeout ( -> $('#about').removeClass("unselected").addClass("selected")), 1800
    setTimeout ( -> $('.content').slideToggle(600)), 1800
    
  grow: ->
    view  = new SMerchPro.Views.PagesExp()
    $('.content').html(view.render().el)
    $('#grow').removeClass("post").addClass("pre")
    setTimeout ( -> $('#learn').removeClass("post").addClass("pre")), 600
    setTimeout ( -> $('#build').removeClass("post").addClass("pre")), 1200
    setTimeout ( -> $('.intro').hide()), 1800
    setTimeout ( -> $('#exp').removeClass("unselected").addClass("selected")), 1800
    setTimeout ( -> $('.content').slideToggle(600)), 1800
    
  build: ->
    view  = new SMerchPro.Views.PagesProj()
    $('.content').html(view.render().el)
    $('#build').removeClass("post").addClass("pre")
    setTimeout ( -> $('#grow').removeClass("post").addClass("pre")), 600
    setTimeout ( -> $('#learn').removeClass("post").addClass("pre")), 1200
    setTimeout ( -> $('.intro').hide()), 1800
    setTimeout ( -> $('#proj').removeClass("unselected").addClass("selected")), 1800
    setTimeout ( -> $('.content').slideToggle(600)), 1800