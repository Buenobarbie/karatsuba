const fs = require('fs');

let data = `module ROM (addr, data);
	input [9:0] addr;
	output reg [9:0] data;
	
	always @*
	begin
		case(addr)\n`;

data += generateText(5);


data += `
        default : data = 10'b0000000000;
    endcase
end

endmodule`

fs.writeFile("rom.v", data, (err) => {
    if (err)
        console.log(err);
    else {
        console.log(fs.readFileSync("rom.v", "utf8"));
  }
});

function exp(n) {
    
}

function generateText(size) {
    var result = '';
    for(var i = 0; i < 32 - 0; i++)
        for(var j = 0; j < 32 - 0; j++)
            result += multiplicativeRow(i, j, size);

    return result;
}

function multiplicativeRow(i, j, size) {
    let firstFactor = formatNumber(convertToBinary(i), size);
    let secondFactor = formatNumber(convertToBinary(j), size);
    let product = i*j;
    product = convertToBinary(product);
    product = formatNumber(product, 2*size);
    //return i + " " + j + "\n"
    return '			10\'b' + firstFactor + secondFactor + ' : data = 10\'b' + product + ';\n';
}

function convertToBinary(number) {
    var rest = parseInt(number);
    var digits = [];
    var result = '';

    while(rest != 0){
        digits.push(rest%2);
        rest = parseInt(rest/2);
    }

    for(var i = digits.length - 1; i >= 0; i--){
        result += digits[i];
    }
    return result;
}

function formatNumber(number, digitsQuantity) {
    var result = '';

    for(var i = 0; i < digitsQuantity - number.length; i++){
        result += '0';
    }
    result += number;

    return result;
}

console.log(generateText());