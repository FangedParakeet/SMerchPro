class SMerchPro.Views.PagesIntro extends Backbone.View
  
  tagName: 'div'
  
  template: JST['pages/intro']
  
  events:
    'click span': 'next'
      
  render: ->
    $(@el).html(@template())
    this
    
  next: ->
    spans = document.getElementsByTagName("span")
    view  = new SMerchPro.Views.PagesAbout()
    $('.content').html(view.render().el)
    $(spans[2]).removeClass("post").addClass("pre")
    setTimeout ( -> $(spans[1]).removeClass("post").addClass("pre")), 600
    setTimeout ( -> $(spans[0]).removeClass("post").addClass("pre")), 1200
    setTimeout ( -> $('.intro').hide()), 1800
    setTimeout ( -> $('#about').removeClass("unselected").addClass("selected")), 1800
    setTimeout ( -> $('.content').slideToggle(600)), 1800
    
    