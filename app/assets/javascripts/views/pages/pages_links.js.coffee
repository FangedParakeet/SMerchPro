class SMerchPro.Views.PagesLinks extends Backbone.View
  
  tagName: 'div'
  
  template: JST['pages/links']
  
  events:
    'click #about': 'about'
    'click #edu': 'edu'
    'click #exp': 'exp'
    'click #proj': 'proj'
    'click #skills': 'skills'
      
  render: ->
    $(@el).html(@template())
    this
    
  about: ->
    spans = document.getElementsByTagName("span")
    view  = new SMerchPro.Views.PagesAbout()
    if $(spans[0]).attr('class') == "post"
      $('.content').html(view.render().el)
      $(spans[2]).removeClass("post").addClass("pre")
      setTimeout ( -> $(spans[1]).removeClass("post").addClass("pre")), 600
      setTimeout ( -> $(spans[0]).removeClass("post").addClass("pre")), 1200
      setTimeout ( -> $('.content').slideToggle(600)), 1800
    else
      unless document.getElementsByClassName("about_info").length
        unless $('.content').css('display') == 'none'
          $('.content').slideToggle(600)
          $('.content').html(view.render().el)
          setTimeout ( -> $('.content').slideToggle(600)), 1200
        else
          $('.content').html(view.render().el)
          $('.content').slideToggle(600)
      else
        $('.content').slideToggle(600)
      
  edu: ->
    spans = document.getElementsByTagName("span")
    view  = new SMerchPro.Views.PagesEdu()
    if $(spans[0]).attr('class') == "post"
      $('.content').html(view.render().el)
      $(spans[2]).removeClass("post").addClass("pre")
      setTimeout ( -> $(spans[1]).removeClass("post").addClass("pre")), 600
      setTimeout ( -> $(spans[0]).removeClass("post").addClass("pre")), 1200
      setTimeout ( -> $('.content').slideToggle(600)), 1800
    else
      unless document.getElementsByClassName("edu_info").length
        unless $('.content').css('display') == 'none'
          $('.content').slideToggle(600)
          $('.content').html(view.render().el)
          setTimeout ( -> $('.content').slideToggle(600)), 1200
        else
          $('.content').html(view.render().el)
          $('.content').slideToggle(600)
      else
        $('.content').slideToggle(600)
        
  exp: ->
    spans = document.getElementsByTagName("span")
    view  = new SMerchPro.Views.PagesExp()
    if $(spans[0]).attr('class') == "post"
      $('.content').html(view.render().el)
      $(spans[2]).removeClass("post").addClass("pre")
      setTimeout ( -> $(spans[1]).removeClass("post").addClass("pre")), 600
      setTimeout ( -> $(spans[0]).removeClass("post").addClass("pre")), 1200
      setTimeout ( -> $('.content').slideToggle(600)), 1800
    else
      unless document.getElementsByClassName("exp_info").length
        unless $('content').css('display') == 'none'
          $('.content').slideToggle(600)
          $('.content').html(view.render().el)
          setTimeout ( -> $('.content').slideToggle(600)), 1200
        else
          $('.content').html(view.render().el)
          $('.content').slideToggle(600)
      else
        $('.content').slideToggle(600)
        
  proj: ->
    spans = document.getElementsByTagName("span")
    view  = new SMerchPro.Views.PagesProj()
    if $(spans[0]).attr('class') == "post"
      $('.content').html(view.render().el)
      $(spans[2]).removeClass("post").addClass("pre")
      setTimeout ( -> $(spans[1]).removeClass("post").addClass("pre")), 600
      setTimeout ( -> $(spans[0]).removeClass("post").addClass("pre")), 1200
      setTimeout ( -> $('.content').slideToggle(600)), 1800
    else
      unless document.getElementsByClassName("proj_info").length
        unless $('.content').css('display') == 'none'
          $('.content').slideToggle(600)
          $('.content').html(view.render().el)
          setTimeout ( -> $('.content').slideToggle(600)), 1200
        else
          $('.content').html(view.render().el)
          $('.content').slideToggle(600)
      else
        $('.content').slideToggle(600)
        
  skills: ->
    spans = document.getElementsByTagName("span")
    view  = new SMerchPro.Views.PagesSkills()
    if $(spans[0]).attr('class') == "post"
      $('.content').html(view.render().el)
      $(spans[2]).removeClass("post").addClass("pre")
      setTimeout ( -> $(spans[1]).removeClass("post").addClass("pre")), 600
      setTimeout ( -> $(spans[0]).removeClass("post").addClass("pre")), 1200
      setTimeout ( -> $('.content').slideToggle(600)), 1800
    else
      unless document.getElementsByClassName("skills_info").length
        unless $('.content').css('display') == 'none'
          $('.content').slideToggle(600)
          $('.content').html(view.render().el)
          setTimeout ( -> $('.content').slideToggle(600)), 1200
        else
          $('.content').html(view.render().el)
          $('.content').slideToggle(600)
      else
        $('.content').slideToggle(600)
    
    
    
    
    