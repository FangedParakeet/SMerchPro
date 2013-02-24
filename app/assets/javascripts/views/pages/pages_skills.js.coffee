class SMerchPro.Views.PagesSkills extends Backbone.View
  
  tagName: 'div'
  
  className: 'skills_info'
  
  template: JST['pages/skills']
      
  render: ->
    $(@el).html(@template())
    this