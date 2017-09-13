document.addEventListener("DOMContentLoaded", function(){
	var buttons = document.getElementsByTagName("button");
	var display = document.getElementById("display");
	var value1 = null;
	var value2 = null;
	// Get all the buttons showing stuff in the display

	for(var i = 0; i < buttons.length; i++) {
		if(Number.parseInt(buttons[i].value) || i === 13){
			buttons[i].addEventListener("click", function() {
				if(value1 === null) {
					value1 = Number.parseInt(this.value);
				} else if(value2 === null) {
					value2 = Number.parseInt(this.value);
				} else {
					alert("Single digits only fam");
				}
				display.innerText = this.value;
				console.log(value1);
				console.log(value2);
			});
		}
	}

	// The equals

	buttons[14].addEventListener("click", function() {
		if(value1 !== null && value2 !== null){
			var result = value1 + value2;
			display.innerText = result;
		} else {
			alert("Not enough info")
		}
	});
	
	// The C button

	buttons[12].addEventListener("click", function() {
		value1 = null;
		value2 = null;
		display.innerText = "";
	});


	// Saving the operator buttons as variables

	


	// Making the calculations work




});



















