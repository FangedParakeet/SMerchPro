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
    if $('#learn').attr('class') == "post"
      $('.info_text').html(view.render().el)
      $('#build').removeClass("post").addClass("pre")
      setTimeout ( -> $('#grow').removeClass("post").addClass("pre")), 600
      setTimeout ( -> $('#learn').removeClass("post").addClass("pre")), 1200
      setTimeout ( -> $('.intro').hide()), 1800
      setTimeout ( -> $('.info_text').slideToggle()), 1800
    else
      if $('.info_text').css('display') == 'none'
        $('.info_text').html(view.render().el)
        $('.info_text').slideToggle()
      else
        $('.info_text').slideToggle()