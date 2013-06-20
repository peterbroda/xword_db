function getParameterByName(name)
{
  name = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
  var regexS = "[\\?&]" + name + "=([^&#]*)";
  var regex = new RegExp(regexS);
  var results = regex.exec(window.location.search);
  if(results == null)
    return "";
  else
    return decodeURIComponent(results[1].replace(/\+/g, " "));
}

$(document).ready(function() {
	var the_file = getParameterByName("puzzle");
	the_file = "xpf_files/" + the_file;

	$.get(the_file, function(xml) {

		$(xml).find('Publisher').each(function(){
			var publisher = $(this).text();
			$('#publisher').append(publisher);
		});

		$(xml).find('Date').each(function(){
			var pub_date = $(this).text();
			$('#pub_date').append(pub_date);
		});

		$(xml).find('Copyright').each(function(){
			var copyright = $(this).text();
			$('#copyright').append(copyright);
		});

		$(xml).find('Title').each(function(){
			var title = $(this).text();
			$('#title').append(title);
//			alert("found the title");
		});

		$(xml).find('Author').each(function(){
			var author = $(this).text();
			$('#author').append(author);
		});

		$(xml).find('Editor').each(function(){
			var editor = $(this).text();
			$('#editor').append(editor);
		});

		$(xml).find('Notepad').each(function(){
			var notepad = $(this).text();
			$('#notepad').append(notepad);
		});

		$(xml).find('MyNotes').each(function(){
			var my_notes = $(this).text();
			$('#my_notes').append(my_notes);
		});

		$(xml).find('MetaSolution').each(function(){
			var meta_solution = $(this).text();
			$('#meta_solution').append(meta_solution);
		});
		$(xml).find('MetaExplanation').each(function(){
			var meta_explanation = $(this).text();
			$('#meta_explanation').append(meta_explanation);
		});

		$(xml).find('Grid').each(function(){
			var row_num = 1;
			$(xml).find('Row').each(function(){
				var row = $(this).text();
				var rtn = '<tr>';
				var col_num = 1;
				for (var i=0; i<row.length; i++)
				{
					if (row.charAt(i) == '.')
					{ rtn = rtn + '<td class="black_square" id="' + row_num + '_' + col_num + '"> </td>'; }
					else
					{ rtn = rtn + '<td class="white_square" id="' + row_num + '_' + col_num + '"><div class="number">&nbsp\;</div><div class="letter">' + row.charAt(i) + '</div></td>'; }
					col_num++;
				}
				rtn = rtn + '</tr>';
				$('table.solution_grid').append(rtn);
				row_num++;
			});
		});

		$(xml).find('RebusEntries').each(function(){
			$(xml).find('Rebus').each(function(){
				var row_num = $(this).attr('Row');
				var col_num = $(this).attr('Col');
				var html_element = 'td#' + row_num + '_' + col_num;
				$(html_element).find('div.letter').html($(this).text());
			});
		});
		$(xml).find('Circles').each(function(){
			$(xml).find('Circle').each(function(){
				var row_num = $(this).attr('Row');
				var col_num = $(this).attr('Col');
				var html_element = 'td#' + row_num + '_' + col_num;
				$(html_element).css('background-color', '#CCC');
			});
		});

		$(xml).find('Clues').each(function(){
			$(xml).find('Clue').each(function(){
				var clue_num = $(this).attr('Num');
				var clue_ans = $(this).attr('Ans');
				var clue_dir = $(this).attr('Dir');
				var the_clue = $(this).text();
				var row_num = $(this).attr('Row');
				var col_num = $(this).attr('Col');
				var html_element = 'td#' + row_num + '_' + col_num + ' div:first-child';
				if (clue_dir == "Across")
				{
					$('td#a_clues').append(clue_num + '. ' + the_clue + '   <b>' + clue_ans + '</b><br />');
					$(html_element).html(clue_num);
				}
				else
				{
					$('td#d_clues').append(clue_num + '. ' + the_clue + '   <b>' + clue_ans + '</b><br />');
					$(html_element).html(clue_num);
				}
			});
		});
	});
});
