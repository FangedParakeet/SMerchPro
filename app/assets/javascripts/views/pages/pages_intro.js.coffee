class SMerchPro.Views.PagesIntro extends Backbone.View
  
  template: JST['pages/intro']
      
  render: ->
    $(@el).html(@template())
    this