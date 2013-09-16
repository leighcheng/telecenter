$(function() {
  $("#masterviews th a, #masterviews .pagination a").live("click", function() {
    $.getScript(this.href);
    return false;
  });
  $("#masterviews_search input").keyup(function() {
    $.get($("#masterviews_search").attr("action"), $("#masterviews_search").serialize(), null, "script");
    return false;
  });
});