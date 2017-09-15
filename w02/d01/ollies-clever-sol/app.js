var resultsMatrix = [
	["draw", "win", "lose"],
	["lose", "draw", "win"],
	["win", "lose", "draw"]
];

var moves = ["rock", "paper", "scissors"];
var playerMove = prompt("Your move? rock, paper, scissors");
var computerMove = moves[Math.floor(Math.random()*3)];


alert("Computer chose " + computerMove);

var compIndex = moves.indexOf(computerMove);
var playerIndex = moves.indexOf(playerMove);

alert(resultsMatrix[compIndex][playerIndex]);