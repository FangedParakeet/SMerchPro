class SMerchPro.Views.PagesProj extends Backbone.View
  
  tagName: 'div'
  
  className: 'proj_info well'
  
  template: JST['pages/proj']
      
  render: ->
    $(@el).html(@template())
    this