class SMerchPro.Views.PagesProj extends Backbone.View
  
  tagName: 'div'
  
  className: 'proj_info'
  
  template: JST['pages/proj']
      
  render: ->
    $(@el).html(@template())
    this