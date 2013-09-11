// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require turbolinks
//= require jquery.facebox
//= require rails.validations
//= require_tree .

$.facebox.settings.closeImage = 'https://raw.github.com/bai/facebox-rails/master/vendor/assets/images/facebox/closelabel.png'
$.facebox.settings.loadingImage = 'https://raw.github.com/bai/facebox-rails/master/vendor/assets/images/facebox/loading.gif'
$(function(){ $('a[rel*=facebox]').facebox(); });
$(function(){ $(document).foundation(); });
$(document).bind('reveal.facebox', function() {
  $('form.new_user').enableClientSideValidations();
  $('.phone_with_ddd').mask('(00) 000000000');
});

!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');
