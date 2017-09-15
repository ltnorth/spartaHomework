$(function() {
	var which = true;

	$("li").each(function(index, li) {
		$(li).one("click", function() {
			if(which === true) {
				$(li).html("X");
				winCheck();
				which = false;
			} else {
				$(li).html("O");
				winCheck();
				which = true;
			}
		});
	});

	function winCheck() {
		if($("#1").text() === "X" && $("#2").text() === "X" && $("#3").text() === "X"){
			$("body").append($("<h1>X wins!</h1>"));
		} else if($("#1").text() === "O" && $("#2").text() === "O" && $("#3").text() === "O"){
			$("body").append($("<h1>O wins!</h1>"));
		} else if($("#4").text() === "X" && $("#5").text() === "X" && $("#6").text() === "X"){
			$("body").append($("<h1>X wins!</h1>"));
		} else if($("#4").text() === "O" && $("#5").text() === "O" && $("#6").text() === "O"){
			$("body").append($("<h1>O wins!</h1>"));
		} else if($("#7").text() === "X" && $("#8").text() === "X" && $("#9").text() === "X"){
			$("body").append($("<h1>X wins!</h1>"));
		} else if($("#7").text() === "O" && $("#8").text() === "O" && $("#9").text() === "O"){
			$("body").append($("<h1>O wins!</h1>"));
		} else if($("#1").text() === "X" && $("#4").text() === "X" && $("#7").text() === "X"){
			$("body").append($("<h1>X wins!</h1>"));
		} else if($("#1").text() === "O" && $("#4").text() === "O" && $("#7").text() === "O"){
			$("body").append($("<h1>O wins!</h1>"));
		} else if($("#2").text() === "X" && $("#5").text() === "X" && $("#8").text() === "X"){
			$("body").append($("<h1>X wins!</h1>"));
		} else if($("#2").text() === "O" && $("#5").text() === "O" && $("#8").text() === "O"){
			$("body").append($("<h1>O wins!</h1>"));
		} else if($("#3").text() === "X" && $("#6").text() === "X" && $("#9").text() === "X"){
			$("body").append($("<h1>X wins!</h1>"));
		} else if($("#3").text() === "O" && $("#6").text() === "O" && $("#9").text() === "O"){
			$("body").append($("<h1>O wins!</h1>"));
		} else if($("#1").text() === "X" && $("#5").text() === "X" && $("#9").text() === "X"){
			$("body").append($("<h1>X wins!</h1>"));
		} else if($("#1").text() === "O" && $("#5").text() === "O" && $("#9").text() === "O"){
			$("body").append($("<h1>O wins!</h1>"));
		} else if($("#3").text() === "X" && $("#5").text() === "X" && $("#7").text() === "X"){
			$("body").append($("<h1>X wins!</h1>"));
		} else if($("#3").text() === "O" && $("#5").text() === "O" && $("#7").text() === "O"){
			$("body").append($("<h1>O wins!</h1>"));
		}
	} 




});