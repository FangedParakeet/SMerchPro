class SMerchPro.Views.PagesInfo extends Backbone.View
  
  tagName: 'div'
  
  className: 'site_info_header'
      
  template: JST['pages/info']
  
  events:
    'click .info_link': 'about'
      
  render: ->
    $(@el).html(@template())
    this
    
  about: ->
    view = new SMerchPro.Views.PagesAboutSite()
    if $('.info_text').css('display') == 'none'
      $('.info_text').html(view.render().el)
      $('.info_text').slideToggle()
    else
      $('.info_text').slideToggle()