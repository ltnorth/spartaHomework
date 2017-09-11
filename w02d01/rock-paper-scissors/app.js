// The player move is gathered and stored in a variable
    // Prompt
var player = prompt("Please make your move: (r)ock (p)aper (s)cissors");
// The app generates a random computer move
  // Math.random, Math.floor 
// The computer move is stored in a variable

var comp = Math.floor(Math.random()*3);

// Compare moves and see who has won, or if it's a draw
  // If the moves are the same, it's a draw
  // Rock beats scissors
  // Scissors beat paper
  // Paper beats rock

// Tell the user the outcome of the game
    // Alert

switch (comp) {
    case 0:
        if(player === "p") {
            alert("You win! Congratulations, your paper covers my rock!")
        } else if(player === "s") {
            alert("You lost! My rock breaks your scissors.")
        } else {
            alert("It's a draw! I also chose rock!")
        }
        break;
    case 1:
        if(player === "s") {
            alert("You win! Congratulations your scissors cut my paper!")
        } else if(player === "r") {
            alert("You lost! My paper covers your rock.")
        } else {
            alert("It's a draw! I also chose paper!")
        }
        break;
    case 2:
        if(player === "r") {
            alert("You win! Congratulations, your rock breaks my scissors!")
        } else if(player === "p") {
            alert("You lost! My scissors cut your paper.")
        } else {
            alert("It's a draw! I also chose scissors!")
        }
        break;
}





// BONUS
    // Update the scores for computer and player

    // The first player to reach a score of 10 is the overall winner

    // Be able to reset the game