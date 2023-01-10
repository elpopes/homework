// function times(num, fun) {
//     for (let i = 0; i < num; i++) {
//         fun(); 
//     }
// }

// const cat = {
//     age: 5,

//     ageOneYear: function() {
//         this.age += 1;
//     }
// };

// cat.ageOneYear();


// console.log(times(10, cat.ageOneYear))

function times(num, fun) {
    for (let i = 0; i < num; i++) {
        fun(); 
    }
}

const cat = {
    age: 5,

    ageOneYear: function() {
        this.age += 1;
    }
};

times(10, function() {
    cat.ageOneYear();
});

function SumCalculator() {
    this.sum = 0
}

SumCalculator.prototype.addNumbers = function(numbers) {
    numbers.forEach(function(number) {
        this.sum += number;
    });
    return this.sum;
};