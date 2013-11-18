$(document).ready(function() {

  $(".puzzle_list_record_left").on("mouseover", function() {
    var $id = $(this).attr("id")
    $.ajax({
	url: "/render_popup_puzzle/" + $id,
	success: function(data) {
	  //$("div#" + $id + " .popup_puzzle").html(data);
	  $(".puzzle_list_preview").html(data);
	}
    })
  })
})
