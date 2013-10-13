class SMerchPro.Views.PagesAbout extends Backbone.View
  
  tagName: 'div'
  
  className: 'about_info'
  
  template: JST['pages/about']
      
  render: ->
    $(@el).html(@template())
    this