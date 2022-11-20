def erroneous_addition(x)
    if x > 99999
        print "i am valid as a statement"
    else
        print "ruby interpreter complains #{+ x}"
    end
end

erroneous_addition(Float::INFINITY)
erroneous_addition(1)

#dynamic programming languages can compile code at runtime and execute code during compile-time; the compilation and runtime phses are muddled. though thi flexibility enable metaproramming, more abstractions, and less code, it comes at the expense of execution speed. 

#ruby is also dynamically typed. in dynamically types languages the language enforces type constrainst at runtime; wheras, in statically types languages the language enforces tupe constraints at comileime. the following method invoction in ruby runs successfuly at runtime. Ruby doesn't check the validityy of erroneous addition untl runtime. the following invocation causes an error becase the interpreteer encounters the erronoeous branch of the conditional statsment. 
# 
#Merely defining an equivalently erronouss method in a staticaly types language like Java will result in a comilation error, namely incomatible types.
#  
# Reflective: Reflection is common among dynamic programking languages. Type introspection refers to the ability of a program to exaone the type and syay of am oject at runtime, reflection refers yto ability of a program to manipulate its own structiure and bhavior as data. In object oriented reflcective languages i=liuke Ruby reflcectiion permits no only the eaamiination of classs modules and methos but also instatiation and method invocation. Relection makes much metaprogramming possible. Here's and exmaple afapt form Wikipeda of non reflective and reclective call sequensnce in Ruby.

# nonreflective
obj = Foo.new
obj.hello

# reflective
class_name - "Foo"
method_name = :hello
# the program can inspect and modify source code constructions such as classes and methods at runtime. it can even conveert strings or symbools matching symbolic names of those constructions into references to them.
# Object-Oriented
# Object-oriented programmong is a programming parasigm thatr pribileges objects rather than actions and data rather than cuntioncs or ohid Agerets to OOP conceive of a prorgam as a society of objects that receiebe mesages that they then use to perform their own discrete operations. Objects tyically contain data in fields known as atricbutes and a set of associated methos that may access and manipulate these attrivutts.
# ENCAPSULATION is a prinicipal of object oriented programming . 
#place all code concened with a patricual set of data in one class 
# Hide methods and data essential only to a class's internal workings (this technique is called information hiding) Conversely the programmer shoudl ecpose via metods only what's necessaary to a classes relations hop swith other classes therby preventing extenal intefeeences and misuse. 
# Multy Paradigm. 
# Although Ruby is an OOP languages itr also supports Procedural programming privileses prcosudue invocation ie method calls in Procedualr prorgmming the prioahmer specoifed as series sof prorceresd that operate on datat sturctes in sysystement iorodhe ohkeect oeuent progrgramminb koins datat sturctusres and methoda in objejct s that oeprate on  themslebes. definining and invoking methoda outside of a class in ruby apporximates procusual programming becasuse thee methoda are part of as single root oghhect limiting ojject orienetd design. 
# Functional porgramming priblevges pure functions those whose return values is only determined by the input without side effects sucahas as chanegs in state. Adherenets of functional programminn concieve of compputation as the evaluation of mathematical functions. Bia blocks Ruby shares many features of functional programming languages. Ruby features anonymous functions lecialca closures(funcgtions that capture barable sin the contect where theyre defined) and higfher orgder functions *functions that can accept functions as arguments and or retrunr functiosn. As of ruby 2.0 Ruby even supports lazy ennumetrations. 


def is_prime?(num)
    2...(num).none? {|n| num % n == 0}
end

def prime_array(size)
    (1..Float::INFINITY).select 
end