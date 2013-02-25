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
    spans = document.getElementsByTagName("span")
    view = new SMerchPro.Views.PagesAboutSite()
    if $(spans[1]).attr('class') == "post"
      $('.info_text').html(view.render().el)
      $(spans[3]).removeClass("post").addClass("pre")
      setTimeout ( -> $(spans[2]).removeClass("post").addClass("pre")), 600
      setTimeout ( -> $(spans[1]).removeClass("post").addClass("pre")), 1200
      setTimeout ( -> $('.intro').hide()), 1800
      setTimeout ( -> $('.info_text').slideToggle()), 1800
    else
      if $('.info_text').css('display') == 'none'
        $('.info_text').html(view.render().el)
        $('.info_text').slideToggle()
      else
        $('.info_text').slideToggle()