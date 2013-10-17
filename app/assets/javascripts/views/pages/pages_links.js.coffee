class SMerchPro.Views.PagesLinks extends Backbone.View
  
  tagName: 'nav'
  
  template: JST['pages/links']
  
  events:
    'click #about_link': 'about'
    'click #background_link': 'exp'
    'click #port_link': 'proj'
    'click #misc_link': 'skills'
      
  render: ->
    $(@el).html(@template())
    this
    
  about: ->
    view  = new SMerchPro.Views.PagesAbout()
    about = $('#about_link')
    if /selected/.test(about.attr('class'))
    else if /undefined/.test($('.selected').attr('id'))
      about.addClass('selected')
      $('.content').hide('slide', {direction: 'right'}, 150)
      setTimeout ( -> $('.content').html(view.render().el)), 150
      setTimeout ( -> $('.content').show('slide', {direction: 'left'}, 300)), 150
    else
      old = $('.selected')
      old.removeClass('selected')
      about.addClass('selected')
      $('.content').hide('slide', {direction: 'right'}, 150)
      setTimeout ( -> $('.content').html(view.render().el)), 150
      setTimeout ( -> $('.content').show('slide', {direction: 'left'}, 300)), 150   
                    
  exp: ->
    view  = new SMerchPro.Views.PagesExp()
    exp = $('#background_link')
    if /selected/.test(exp.attr('class'))
    else if /undefined/.test($('.selected').attr('id'))
      exp.addClass('selected')
      $('.content').hide('slide', {direction: 'right'}, 150)
      setTimeout ( -> $('.content').html(view.render().el)), 150
      setTimeout ( -> $('.content').show('slide', {direction: 'left'}, 300)), 150
    else
      old = $('.selected')
      old.removeClass('selected')
      exp.addClass('selected')
      $('.content').hide('slide', {direction: 'right'}, 150)
      setTimeout ( -> $('.content').html(view.render().el)), 150
      setTimeout ( -> $('.content').show('slide', {direction: 'left'}, 300)), 150   
        
  proj: ->
    view  = new SMerchPro.Views.PagesProj()
    proj = $('#port_link')
    if /selected/.test(proj.attr('class'))
    else if /undefined/.test($('.selected').attr('id'))
      proj.addClass('selected')
      $('.content').hide('slide', {direction: 'right'}, 150)
      setTimeout ( -> $('.content').html(view.render().el)), 150
      setTimeout ( -> $('.content').show('slide', {direction: 'left'}, 300)), 150
    else
      old = $('.selected')
      old.removeClass('selected')
      proj.addClass('selected')
      $('.content').hide('slide', {direction: 'right'}, 150)
      setTimeout ( -> $('.content').html(view.render().el)), 150
      setTimeout ( -> $('.content').show('slide', {direction: 'left'}, 300)), 150   
        
  skills: ->
    view  = new SMerchPro.Views.PagesSkills()
    skills = $('#misc_link')
    if /selected/.test(skills.attr('class'))
    else if /undefined/.test($('.selected').attr('id'))
      skills.addClass('selected')
      $('.content').hide('slide', {direction: 'right'}, 150)
      setTimeout ( -> $('.content').html(view.render().el)), 150
      setTimeout ( -> $('.content').show('slide', {direction: 'left'}, 300)), 150
    else
      old = $('.selected')
      old.removeClass('selected')
      skills.addClass('selected')
      $('.content').hide('slide', {direction: 'right'}, 150)
      setTimeout ( -> $('.content').html(view.render().el)), 150
      setTimeout ( -> $('.content').show('slide', {direction: 'left'}, 300)), 150   