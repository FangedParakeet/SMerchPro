class SMerchPro.Views.PagesLinks extends Backbone.View
  
  template: JST['pages/links']
  
  events:
    'click #about': 'about'
    'click #edu': 'edu'
    'click #exp': 'exp'
    'click #proj': 'proj'
    'click #skills': 'skills'
      
  render: ->
    $(@el).html(@template())
    this
    
  about: ->
    