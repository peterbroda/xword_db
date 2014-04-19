$(document).ready(function() {

  $(".word_list_row").on("click", function() {
    var $id = $(this).attr("id")
    $.ajax({
	url: "/words/" + $id,
	success: function(data) {
	  //$("div#" + $id + " .popup_puzzle").html(data);
	  $(".word_record").html(data);
	}
    })
  })
})
