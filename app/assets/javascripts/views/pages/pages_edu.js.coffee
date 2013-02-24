class SMerchPro.Views.PagesEdu extends Backbone.View
  
  tagName: 'div'
  
  className: 'edu_info'
  
  template: JST['pages/edu']
      
  render: ->
    $(@el).html(@template())
    this