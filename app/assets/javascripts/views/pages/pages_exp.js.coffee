class SMerchPro.Views.PagesExp extends Backbone.View
  
  tagName: 'div'
  
  className: 'exp_info'
  
  template: JST['pages/exp']
      
  render: ->
    $(@el).html(@template())
    this