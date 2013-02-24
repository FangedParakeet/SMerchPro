class SMerchPro.Views.PagesLinks extends Backbone.View
  
  tagName: 'div'
  
  template: JST['pages/links']
  
  events:
    'click #about': 'about'
      
  render: ->
    $(@el).html(@template())
    this
    
  about: ->
    spans = document.getElementsByTagName("span")
    $(spans[2]).removeClass("post").addClass("pre")
    setTimeout ( -> $(spans[1]).removeClass("post").addClass("pre")), 600
    setTimeout ( -> $(spans[0]).removeClass("post").addClass("pre")), 1200
    