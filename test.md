#Ans1
    1.)Float objects represent inexact real numbers using the native architecture's double-precision floating point representation.  
    2.)Fixnum be Integer values  

#Ans2
	puts str1 + str2 
	1.) str1 and str2 puts together(if int not string,int  will calculator first and puts result)
	2.) show on pit together

	puts "#{str1}#{str2}"
	1.)only print str1(connect)str2 

#Ans3
	1.)array as order list
	2.)hash be object contain many key and value 

#Ans4  
	[1, "a string", 3.14, [1,2,3,4]] - [1, "a string", 3.14, [1,2,3,4]].select { |x| x.kind_of? String }

#Ans5
    (1..100).to_a.map { |a| 2+a }


#Ans6  
    uniq->new array item
	[1, 2, 3, 3].uniq ==> ans be 1,2,3 be unique value in array
    uniq!=>ary or nil
	[1, 2, 3, 3].uniq!  ==> ans be 1,2,3 be non-unique value in array

#Ans7  
    for 1 to 100 random
    rand(100)
    (1..100).to_a.sample

#Ans8
    ((1 > 3)&&(true == true))||(!!!false)= (false&&true)||true =true

#Ans9
    if (var>5) ? return "var is greater than or equal to 5" : return "var is less than 5"

#Ans10
    options = { font_size: 10, font_family: "Arial" }     string key
    options = { :font_size => 10, :font_family => "Arial" }    symbol


