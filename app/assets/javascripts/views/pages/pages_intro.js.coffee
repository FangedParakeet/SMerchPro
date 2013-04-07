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
    setTimeout ( -> $('#grow').removeClass("post").addClass("pre")), 300
    setTimeout ( -> $('#build').removeClass("post").addClass("pre")), 600
    setTimeout ( -> $('.intro').hide()), 900
    setTimeout ( -> $('#about').removeClass("unselected").addClass("selected")), 900
    setTimeout ( -> $('.content').slideToggle(300)), 900
    
  grow: ->
    view  = new SMerchPro.Views.PagesExp()
    $('.content').html(view.render().el)
    $('#grow').removeClass("post").addClass("pre")
    setTimeout ( -> $('#learn').removeClass("post").addClass("pre")), 300
    setTimeout ( -> $('#build').removeClass("post").addClass("pre")), 600
    setTimeout ( -> $('.intro').hide()), 900
    setTimeout ( -> $('#exp').removeClass("unselected").addClass("selected")), 900
    setTimeout ( -> $('.content').slideToggle(300)), 900
    
  build: ->
    view  = new SMerchPro.Views.PagesProj()
    $('.content').html(view.render().el)
    $('#build').removeClass("post").addClass("pre")
    setTimeout ( -> $('#grow').removeClass("post").addClass("pre")), 300
    setTimeout ( -> $('#learn').removeClass("post").addClass("pre")), 600
    setTimeout ( -> $('.intro').hide()), 900
    setTimeout ( -> $('#proj').removeClass("unselected").addClass("selected")), 900
    setTimeout ( -> $('.content').slideToggle(300)), 900