// GPS 1.2 - JavaScript

// YOUR FULL NAMES:
//  1. 
//  2. 


// 1. "YOU SIGNED... WHO?!"

//This is object literal
// var adam = {
//   name: "Adam Sandler",
//   age: 47,
//   quote: "That's your home! Are you too good for your home?!"
// };

//initalizing client
/*var client = function(name, age, quote){
    this.name = name;
    this.age = age;
    this.quote = quote;
};*/

function Client (name, age, quote){
    this.name = name;
    this.age = age;
    this.quote = quote;
};

function printClient(client){
    console.log(client.name + " " + client.age + " " + client.quote);  
};


// 2. "Here they Come!"
var Adam = new Client("Adam Sandler", 47, "That's your home! Are you too good for your home?!")
var Kristen = new Client("Kristen Bell", 33, "Do you wanna build a snowman?")
var Jim = new Client("Jim Carrey", 52, "...So you're telling me there is a chance? YEAH!")


// 3. "TIME IS MONEY!"

//YOUR CODE HERE!

var shooterMcGavin = new Client("Shooter McGavin", 48, "Just stay out of my way... or you'll pay. Listen to what I say.");
shooterMcGavin.constructor === Client;
shooterMcGavin.age === 48;
shooterMcGavin.quote === "Just stay out of my way... or you'll pay. Listen to what I say.";

// 4. "SHOW 'EM OFF!"

var people = [Adam, Kristen, Jim, shooterMcGavin, Denny];

printClient(Adam); 
printClient(Kristen);

//for(i = 0; i < people.length; i++){
    // console.log("Name: " + people[i].name);
    // console.log("Age: " + people[i].age);
    // console.log("Quote: " + people[i].quote);
  //  people[i].id = i+1;
    //printClient(people[i]);
//}


// ** BONUS **

// Added an ID # to the clients

// Your Reflection:
// Everything went smooth until we had to print the info to the screen. Setting
// up the for loop was easy but our solution wasn't D.R.Y where Emily gave a hint
// that maybe we should write a method. Greg was able to come up with a better
// solution where we created another function named, "printClient" and with Emily's
// help, we were able to get a working solution.