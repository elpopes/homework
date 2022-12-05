what's a faster way to implement a set?
pointer arythmitic
set = [true, false, true, true, true, false, false]
insert is O(1) time
include is O(1) time
delete is O(1) time
won't work with floats. and it takes up a lot of space. {0;10^20} just two ele, but 
takes up huge amount of space because of range (max-min)
buckets using modulo operator % by the number of buckets
buckets use O(n) time complexity. 
need 
Amortize. Pay up front. Amortize O(1)