document.addEventListener("DOMContentLoaded", function(){
	var buttons = document.getElementsByTagName("button");
	var display = document.getElementById("display");
	var value1 = "";
	var value2 = "";
	var operator = null;
	var numCheck = false;

	// Maths functions

	function add(num1, num2) {
	    return parseInt(num1) + parseInt(num2);
	}
	function subtract(num1, num2) {
	    return num1 - num2;
	}
	function multiply(num1, num2) {
	    return num1 * num2;
	}
	function divide(num1, num2) {
	    return num1 / num2;
	}

	// Get all the buttons showing stuff in the display

	for(var i = 0; i < buttons.length; i++) {
		if(Number.parseInt(buttons[i].value) || i === 13){
			buttons[i].addEventListener("click", function() {
				if(numCheck === false) {
					value1 = value1 + (this.value).toString();
					display.innerText = value1;
					console.log(value1);
				} else {
					value2 = value2 + (this.value).toString();
					display.innerText = value2;
					console.log(value2);
				}
			});
		}
	}

	
	
	// The C button

	buttons[12].addEventListener("click", function() {
		value1 = "";
		value2 = "";
		display.innerText = "";
		numCheck = false;
	});


	// Saving the operator buttons as variables
	var operatorIndex = [3, 7, 11, 15];
	for(var i = 0; i < buttons.length; i++) {
		if(operatorIndex.indexOf(i) !== -1) {
			buttons[i].addEventListener("click", function() {
				operator = this.value;
				display.innerText = operator;
				numCheck = true;
				console.log(operator);
			});
		}
	}


	// The equals

	buttons[14].addEventListener("click", function() {
		if(value1 && value2){
			numCheck = false;
			var val1 = value1;
			var val2 = value2;
			value1 = "";
			value2 = "";
			switch(operator) {
				case "+":
					display.innerText = add(val1, val2);
					break;
				case "-":
					display.innerText = subtract(val1, val2);
					break;
				case "/":
					display.innerText = divide(val1, val2);
					break;
				case "*":
					display.innerText = multiply(val1, val2);
					break;
				default:
					alert("Choose an operation");
					break;
			}
		} else {
			alert("Please choose your two numbers first");
		}
	});




});



















