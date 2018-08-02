function double(num) {
  var doubled = num * 2;
  console.log(doubled);
}

function greet() {
  console.log("hello");
}
class User {
  constructor(name, email) {
    this.name = name,
    this.email = email,
  }
}

var user = new User('john', 'john@john.mail')


function is_a_panagram(){
  var alphabets = 'abcdefghijklmnopqrstuvwxyz';
    var sentance = prompt();
    sentaance = sentance.toLowerCase();
    var checker = 0;
    for (var i = 0; i < alphabets.length; i++) {
      var letter = alphabets[i];
      if (sentance.indexOf(letter) > -1)
      checker++;
    }if (checker == 26) {
      alert('you got it jack');
    }else {
      alert('nope');
    }
}
function reverseString(){
  text = prompt();
  alert(text.split('').reverse().join(''));
}
