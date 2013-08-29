/* JavaScript */

"use strict"

var x = (1 | 2) & (0x01 ^ 3.0);
var y = [ x, x + 1 ];

y.push(y[0] * y[1] % 5);

function z() {
  this.l = function() {
    if (this.n && this.n) {
      return this.n.length;
    }
    return null;
  }
  this.k = function k(t) {
    t.n = 0;
    return new t();
  }
  this.s = function(v) {
    this.n = v;
    return this.q;
  }
  this.q = this;
}

if (y instanceof Array) {
  y = y.concat(new Array(y.indexOf(2), y.valueOf()));
}

var l = new Object();
(function(k) {
  k.o = (new z()).k(z).k(z).s(y);
}(l));

console.log(window.l.o.l()); // guess this :P

