$(window).load(function() {
  var hl1_color = "#C1918B";
  var hl2_color = "#A15951";
  var hl3_color = "#C7473E";
  var hlB_color = "#000000"; // for black squares, like in MGWCC 187
  var highlight1_divs = $( "div.highlight1" );
  var highlight2_divs = $( "div.highlight2" );
  var highlight3_divs = $( "div.highlight3" );
  var highlightB_divs = $( "div.highlightB" );
  var highlightC_divs = $( "div.highlightC" );
  $( "#highlight_button" ).on("click", function() {
    highlight1_divs.toggleClass( "highlight1_on" );
    highlight1_divs.toggleClass( "white_square" ); // we toggle white_square as well to get rid of the pesky 1px solid white border
    highlight2_divs.toggleClass( "highlight2_on" );
    highlight2_divs.toggleClass( "white_square" );
    highlight3_divs.toggleClass( "highlight3_on" );
    highlight3_divs.toggleClass( "white_square" );
    highlightB_divs.toggleClass( "highlightB_on" );
    highlightB_divs.toggleClass( "white_square" );
    highlightC_divs.toggleClass( "highlightC_on" );
    highlightC_divs.toggleClass( "white_square" );
  })

  setInterval(function() {
	$( ".letter.schrodinger" ).each( function( index ) {
		var shr1 = $( this ).attr( "id" ).split("_")[0];
		var shr2 = $( this ).attr( "id" ).split("_")[1];
		if ($( this ).text() == shr1)
		{
			$( this ).html( shr2 );
		}
		else 
		{
			$( this ).html( shr1 );
		}
	})
  }, 1500)
})
