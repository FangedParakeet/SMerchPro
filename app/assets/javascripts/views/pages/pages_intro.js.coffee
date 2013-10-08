class SMerchPro.Views.PagesIntro extends Backbone.View
  
  tagName: 'div'
  
  template: JST['pages/intro']
  
  events:
    'click #next': 'next'
      
  render: ->
    $(@el).html(@template())
    this
    
  next: ->
    view = new SMerchPro.Views.PagesAbout
    $('.content').hide('slide', {direction: 'right'}, 300)
    setTimeout ( -> $('.content').html(view.render().el)), 300
    setTimeout ( -> $('.content').show('slide', {direction: 'left'}, 300)), 300
    
