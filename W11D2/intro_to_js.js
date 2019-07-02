function mysteryScoping1() {
  var x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping2() {
  const x = 'out of block';
  if (true) {
    const x = 'in block';  // const sets x within scope of if
    console.log(x);
  }
  console.log(x);   // but not overall
}

function mysteryScoping3() {
  const x = 'out of block';
  if (true) {
    var x = 'in block'; // cannot redefine const
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping4() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping5() {
  let x = 'out of block';   // cannot keep redefining lets
  if (true) {
    let x = 'in block';  // cannot keep redefining lets
    console.log(x);
  }
  let x = 'out of block again';  // cannot keep redefining lets
  console.log(x);
}

function madLib(verb, adj, noun) {
  console.log(`We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}`);
}

function isSubstring(searchString, subString) {
  return searchString.includes(subString);
}