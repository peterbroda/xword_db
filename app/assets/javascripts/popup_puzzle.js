$(document).ready(function() {

  $("div.puzzle_link").on("mouseover", function() {
    var $id = $(this).attr("id")
    $.ajax({
	url: "/render_popup_puzzle/" + $id,
	success: function(data) {
	  $("div#" + $id + " .popup_puzzle").html(data);
	}
    })
  })
})
