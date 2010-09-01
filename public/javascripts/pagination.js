$(function() {
  $(".pagination a").live("click", function() {
//     $(".pagination").html("Loading next page..");
     $.get(this.href, null, null, "script");
      return false;
  });
});