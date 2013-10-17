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
    about = $('#about')
    if /selected/.test(about.attr('class'))
    else if /undefined/.test($('.selected').attr('id'))
      about.addClass('selected')
      src = about.attr('src')
      over = about.attr('onmouseover')
      src = src.replace('1', '2')
      about.attr('src', src)
      about.attr('onmouseout', over)
      $('.content').hide('slide', {direction: 'right'}, 150)
      setTimeout ( -> $('.content').html(view.render().el)), 150
      setTimeout ( -> $('.content').show('slide', {direction: 'left'}, 300)), 150
    else
      old = $('.selected')
      old.removeClass('selected')
      oldSrc = old.attr('src')
      oldOver = old.attr('onmouseout')
      oldSrc = oldSrc.replace('2', '1')
      oldOver = oldOver.replace('2', '1')
      old.attr('src', oldSrc)
      old.attr('onmouseout', oldOver)
      about.addClass('selected')
      src = about.attr('src')
      over = about.attr('onmouseover')
      src = src.replace('1', '2')
      about.attr('src', src)
      about.attr('onmouseout', over)
      $('.content').hide('slide', {direction: 'right'}, 150)
      setTimeout ( -> $('.content').html(view.render().el)), 150
      setTimeout ( -> $('.content').show('slide', {direction: 'left'}, 300)), 150   
                    
  exp: ->
    view  = new SMerchPro.Views.PagesExp()
    exp = $('#exp')
    if /selected/.test(exp.attr('class'))
    else if /undefined/.test($('.selected').attr('id'))
      exp.addClass('selected')
      src = exp.attr('src')
      over = exp.attr('onmouseover')
      src = src.replace('1', '2')
      exp.attr('src', src)
      exp.attr('onmouseout', over)
      $('.content').hide('slide', {direction: 'right'}, 150)
      setTimeout ( -> $('.content').html(view.render().el)), 150
      setTimeout ( -> $('.content').show('slide', {direction: 'left'}, 300)), 150
    else
      old = $('.selected')
      old.removeClass('selected')
      oldSrc = old.attr('src')
      oldOver = old.attr('onmouseout')
      oldSrc = oldSrc.replace('2', '1')
      oldOver = oldOver.replace('2', '1')
      old.attr('src', oldSrc)
      old.attr('onmouseout', oldOver)
      exp.addClass('selected')
      src = exp.attr('src')
      over = exp.attr('onmouseover')
      src = src.replace('1', '2')
      exp.attr('src', src)
      exp.attr('onmouseout', over)
      $('.content').hide('slide', {direction: 'right'}, 150)
      setTimeout ( -> $('.content').html(view.render().el)), 150
      setTimeout ( -> $('.content').show('slide', {direction: 'left'}, 300)), 150   
        
  proj: ->
    view  = new SMerchPro.Views.PagesProj()
    proj = $('#proj')
    if /selected/.test(proj.attr('class'))
    else if /undefined/.test($('.selected').attr('id'))
      proj.addClass('selected')
      src = proj.attr('src')
      over = proj.attr('onmouseover')
      src = src.replace('1', '2')
      proj.attr('src', src)
      proj.attr('onmouseout', over)
      $('.content').hide('slide', {direction: 'right'}, 150)
      setTimeout ( -> $('.content').html(view.render().el)), 150
      setTimeout ( -> $('.content').show('slide', {direction: 'left'}, 300)), 150
    else
      old = $('.selected')
      old.removeClass('selected')
      oldSrc = old.attr('src')
      oldOver = old.attr('onmouseout')
      oldSrc = oldSrc.replace('2', '1')
      oldOver = oldOver.replace('2', '1')
      old.attr('src', oldSrc)
      old.attr('onmouseout', oldOver)
      proj.addClass('selected')
      src = proj.attr('src')
      over = proj.attr('onmouseover')
      src = src.replace('1', '2')
      proj.attr('src', src)
      proj.attr('onmouseout', over)
      $('.content').hide('slide', {direction: 'right'}, 150)
      setTimeout ( -> $('.content').html(view.render().el)), 150
      setTimeout ( -> $('.content').show('slide', {direction: 'left'}, 300)), 150   
        
  skills: ->
    view  = new SMerchPro.Views.PagesSkills()
    skills = $('#skills')
    if /selected/.test(skills.attr('class'))
    else if /undefined/.test($('.selected').attr('id'))
      skills.addClass('selected')
      src = skills.attr('src')
      over = skills.attr('onmouseover')
      src = src.replace('1', '2')
      skills.attr('src', src)
      skills.attr('onmouseout', over)
      $('.content').hide('slide', {direction: 'right'}, 150)
      setTimeout ( -> $('.content').html(view.render().el)), 150
      setTimeout ( -> $('.content').show('slide', {direction: 'left'}, 300)), 150
    else
      old = $('.selected')
      old.removeClass('selected')
      oldSrc = old.attr('src')
      oldOver = old.attr('onmouseout')
      oldSrc = oldSrc.replace('2', '1')
      oldOver = oldOver.replace('2', '1')
      old.attr('src', oldSrc)
      old.attr('onmouseout', oldOver)
      skills.addClass('selected')
      src = skills.attr('src')
      over = skills.attr('onmouseover')
      src = src.replace('1', '2')
      skills.attr('src', src)
      skills.attr('onmouseout', over)
      $('.content').hide('slide', {direction: 'right'}, 150)
      setTimeout ( -> $('.content').html(view.render().el)), 150
      setTimeout ( -> $('.content').show('slide', {direction: 'left'}, 300)), 150   