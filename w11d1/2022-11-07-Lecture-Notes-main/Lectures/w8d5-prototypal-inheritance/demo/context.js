Array.prototype.hello = function () {
  // this.forEach(function(el) {
  //   console.log(this);
  // })

  // let that = this;

  this.forEach(el => {
    console.log(this);
  })
}

console.log([1, 2, 3,4].hello());