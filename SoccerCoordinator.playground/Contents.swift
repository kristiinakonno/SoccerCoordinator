//This a function to help check if a list of players is in am ascending order
func isBalanced(let players: [[String:String]]) -> Bool {
    let length = players.count
    var i = 0;
    //I am getting all of the players up untill the very last one because i am comparing this players height with the next one
    while (i < length - 1){
        //the a player is taller then the previous one then the list is not in an ascending order the the function has to return false
        if (players[i]["height"] > players[i + 1]["height"]){
            return false
        }
        i++
    }
    //if it hasn't return false, then eveything is fine and we can return true
    return true
}

//All the dictionaries for the players
let player1 = [
    "name": "Joe Smith",
    "height": "42",
    "experience": "yes",
    "guardian": "Jim and Jan Smith"]
let player2 = [
    "name": "Jill Tanner",
    "height": "36",
    "experience": "yes",
    "guardian": "Clara Tanner"]
let player3 = [
    "name": "Bill Bon",
    "height": "43",
    "experience": "yes",
    "guardian": "Sara and Jenny Bon"]
let player4 = [
    "name": "Eva Gordon",
    "height": "45",
    "experience": "no",
    "guardian": "Wendy and Mike Gordon"]
let player5 = [
    "name": "Matt Gill",
    "height": "40",
    "experience": "no",
    "guardian": "Charles and Sylvia Gill"]
let player6 = [
    "name": "Kimmy Stein",
    "height": "41",
    "experience": "no",
    "guardian": "Bill and Hillary Stein"]
let player7 = [
    "name": "Sammy Adams",
    "height": "45",
    "experience": "no",
    "guardian": "Jeff Adams"]
let player8 = [
    "name": "Karl Saygan",
    "height": "42",
    "experience": "yes",
    "guardian": "Heather Bledsoe"]
let player9 = [
    "name": "Suzane Greenberg",
    "height": "44",
    "experience": "yes",
    "guardian": "Henrietta Dumas"]
let player10 = [
    "name": "Sal Dali",
    "height": "41",
    "experience": "no",
    "guardian": "Gala Dali"]
let player11 = [
    "name": "Joe Kavalier",
    "height": "39",
    "experience": "no",
    "guardian": "Sam and Elaine Kavalier"]
let player12 = [
    "name": "Ben Finkelstein",
    "height": "44",
    "experience": "no",
    "guardian": "Aaron and Jill Finkelstein"]
let player13 = [
    "name": "Diego Soto",
    "height": "41",
    "experience": "yes",
    "guardian": "Robin and Sarika Soto"]
let player14 = [
    "name": "Chloe Alaska",
    "height": "47",
    "experience": "no",
    "guardian": "David and Jamie Alaska"]
let player15 = [
    "name": "Arnold Willis",
    "height": "43",
    "experience": "no",
    "guardian": "Claire Willis"]
let player16 = [
    "name": "Phillip Helm",
    "height": "44",
    "experience": "yes",
    "guardian": "Thomas Helm and Eva Jones"]
let player17 = [
    "name": "Les Clay",
    "height": "42",
    "experience": "yes",
    "guardian": "Wyonna Brown"]
let player18 = [
    "name": "Herschel Krustofski",
    "height": "45",
    "experience": "yes",
    "guardian": "Hyman and Rachel Krustofski"]

//This is the list containg all of the players
let allPlayers: [[String:String]] = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]

//This is the list that has all of the teams and when will their first training be.
let teamPlayingTimes = [
    "dragons": "March 17, 1pm",
    "sharks": "March 17, 3pm",
    "raptors": "March 18, 1pm"]

//Empty listst for experienced and inexperienced players to make dividing into the teams easier
var experiencedPlayers: [[String:String]] = []
var inexperiencedPlayers: [[String:String]] = []

//Empty lists for all of the 3 teams.
var dragons: [[String:String]] = []
var sharks: [[String:String]] = []
var raptors: [[String:String]] = []

//Diving players up in order of their experience to previously made lists
for player in allPlayers{
    if (player["experience"] == "yes"){
        experiencedPlayers.append(player)
    } else {
        inexperiencedPlayers.append(player)
    }
}

//Making the list on experienced players to be in a descending order. That makes it easier to divide them up by height
while (!isBalanced(experiencedPlayers)){
    let length = experiencedPlayers.count
    var i = 0;
    while (i < length - 1){
        if (experiencedPlayers[i]["height"] > experiencedPlayers[i + 1]["height"]){
            let p = experiencedPlayers[i + 1]
            experiencedPlayers[i + 1] = experiencedPlayers[i]
            experiencedPlayers[i] = p
        }
        i++
    }
}

//Making the list of inexperienced players to be also in descenging order.
while (!isBalanced(inexperiencedPlayers)){
    let length = inexperiencedPlayers.count
    var i = 0;
    while (i < length - 1){
        if (inexperiencedPlayers[i]["height"] > inexperiencedPlayers[i + 1]["height"]){
            let p = inexperiencedPlayers[i + 1]
            inexperiencedPlayers[i + 1] = inexperiencedPlayers[i]
            inexperiencedPlayers[i] = p
        }
        i++
    }
}

//Getting specific people to the 3 team so that them teams would be divided by height
dragons = [experiencedPlayers[0], experiencedPlayers[4], experiencedPlayers[8], inexperiencedPlayers[0], inexperiencedPlayers[4], inexperiencedPlayers[8]]

sharks = [experiencedPlayers[1], experiencedPlayers[5], experiencedPlayers[7], inexperiencedPlayers[1], inexperiencedPlayers[3], inexperiencedPlayers[7]]

raptors = [experiencedPlayers[2], experiencedPlayers[3], experiencedPlayers[6], inexperiencedPlayers[2], inexperiencedPlayers[5], inexperiencedPlayers[6]]

//From here on comes the printing of the letters for all of the teams and storing them in a list
var letters: [String] = []

for p in dragons{
    let letter = "Dear \(p["guardian"]!)! \(p["name"]!) first traning will be with Dragons on \(teamPlayingTimes["dragons"]!)."
    print(letter)
    letters.append(letter)
}

for p in sharks{
    let letter = "Dear \(p["guardian"]!)! \(p["name"]!) first traning will be with Sharks on \(teamPlayingTimes["sharks"]!)."
    print(letter)
    letters.append(letter)
}

for p in raptors{
    let letter = "Dear \(p["guardian"]!)! \(p["name"]!) first traning will be with Raptors on \(teamPlayingTimes["raptors"]!)."
    print(letter)
    letters.append(letter)
}
