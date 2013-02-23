class SMerchPro.Views.PagesIndex extends Backbone.View
  
  tagName: "span"
  template: JST['pages/index']
  
  events: 
    'click span': 'about'

  render: ->
      $(@el).html(@template(word: @collection))
      $(@el).addClass("pre")
      this
      
  about: ->
    