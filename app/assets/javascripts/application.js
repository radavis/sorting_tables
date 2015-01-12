//= require jquery
//= require jquery_ujs
//= require jquery.tablesorter
//= require foundation
//= require_tree .

$(function(){
  $(".tablesorter").tablesorter({
    headers: {
      3: { sorter: false }  // Don't sort the last column
    }
  });

  $(document).foundation();
});
