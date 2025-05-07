function add(a, b){
    return parseInt(a)+parseInt(b);
}

function sub(a, b){
    return parseInt(a)-parseInt(b);
}

function mul(a, b){
    return parseInt(a)*parseInt(b);
}

function div(a, b){
    return parseInt(a)/parseInt(b);
}

const readline = require('readline').createInterface({
    input: process.stdin,
    output: process.stdout,
});


readline.question("Escolha (a/b/c/d): ", (esc) => {
readline.question('Number 1: ', (n1) => {
    readline.question("Number 2: ", (n2) => {
        // console.log("Processing...");
        switch (esc){
            case "a":
                console.log("Result: " + add(n1, n2));
                break;
            case "b":
                console.log("Result: " + sub(n1, n2));
                break;
            case "c":
                console.log("Result: " + mul(n1, n2));
                break;
            case "d":
                console.log("Result: " + div(n1, n2));
                break;
            default:
                console.log("Errado!");
        }
        readline.close();
    });
    // readline.close();
});
});