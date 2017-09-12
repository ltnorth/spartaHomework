alert("Welcome to rock, paper, scissors! It's first to 10, click okay when ready to begin!");

var pScore = 0;
var cScore = 0;

while(true) {
    var player = prompt("Please make your move: (r)ock (p)aper (s)cissors");
    var comp = Math.floor(Math.random()*3);
    switch (comp) {
        case 0:
            if(player === "p") {
                alert("You win! Your paper covers my rock!");
                pScore++;
            } else if(player === "s") {
                alert("You lost! My rock breaks your scissors.");
                cScore++;
            } else {
                alert("It's a draw! I also chose rock!");
            }
            break;
        case 1:
            if(player === "s") {
                alert("You win! Your scissors cut my paper!");
                pScore++;
            } else if(player === "r") {
                alert("You lost! My paper covers your rock.");
                cScore++;
            } else {
                alert("It's a draw! I also chose paper!");
            }
            break;
        case 2:
            if(player === "r") {
                alert("You win! Your rock breaks my scissors!");
                pScore++;
            } else if(player === "p") {
                alert("You lost! My scissors cut your paper.");
                cScore++;
            } else {
                alert("It's a draw! I also chose scissors!");
            }
            break;
    }
    if(pScore === 10) {
        alert("You are the overall winner! You beat me 10-" + cScore);
        var again = prompt("Would you like to play again? Y or N");
        if (again === "Y") {
            var pScore = 0;
            var cScore = 0;
        } else {
            break;
        }
    }
    if (cScore === 10) {
        alert("You lost overall with a score of " + pScore + " to my 10!");
        prompt("Would you like to play again? Y or N");
        if (again === "Y") {
            var pScore = 0;
            var cScore = 0;
        } else {
            break;
        }
    }
}