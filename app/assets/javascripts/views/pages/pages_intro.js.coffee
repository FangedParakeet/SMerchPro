class SMerchPro.Views.PagesIntro extends Backbone.View
  
  tagName: 'div'
  
  template: JST['pages/intro']
      
  render: ->
    $(@el).html(@template())
    this