$(document).ready(function(){
  // epon is the class name for sidebar that is open/showing. Just a class name that won't clash :) 
  $('#active_admin_content .table_tools').append('<a id="toggleFilters" href="#" class=\'epon\'>Filters</a>')
  // when we request a filtered collection, we won't hide the sidebar
  if(!window.location.search.includes('Filter')){ $('div#sidebar').hide(); 
  $('a#toggleFilters').removeClass('epon') }
  $('a#toggleFilters').click(function(){ $('div#sidebar').toggle(); 
  $(this).toggleClass('epon') })
})
