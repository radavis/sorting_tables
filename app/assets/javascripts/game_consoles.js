$(function(){
  $(".game-consoles").tablesorter({
    headers: {
      3: { sorter: false }  // Don't sort the last column
    }
  });
});
