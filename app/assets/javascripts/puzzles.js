$(document).ready(function() {
  $( "#highlight_button" ).on("click", function() {
    if ($("td.highlight").css("background-color") == "rgb(193, 145, 139)") {
      $("td.highlight").css("background-color", "#FFF");
      $("td.highlight2").css("background-color", "#FFF");
      $("td.highlight3").css("background-color", "#FFF");
    }
    else {
      $("td.highlight").css("background-color", "#C1918B");
      $("td.highlight2").css("background-color", "#A15951");
      $("td.highlight3").css("background-color", "#C7473E");
    }

  })
})
