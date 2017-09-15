for (var i = 0; i < 64; i++) {
	var square = document.createElement("li");
	document.getElementsByClassName('board')[0].appendChild(square);
}

var squares = document.getElementsByTagName("li");
for (var i = 1; i < squares.length; i++) {
	squares[i].className = "black";
}
for (var i = 0; i < squares.length; i+=2) {
	squares[i].className = "white";
	if (i===6 || i===22 || i===38 || i===54) {
		i++;
	}
	if (i===15 || i===31 || i===47) {
		i--;
	}
}




for (var i = 0; i < 16; i++) {
	squares[i].style.fontFamily = "DejaVu Sans";
	squares[i].innerHTML = "&#x26C0";
}









