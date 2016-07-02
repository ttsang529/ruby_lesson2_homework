#Ans1  
    a = 1   #variable "a" to 1
    @a = 2  #instance variable "a" to 2
    @@a = 5 #class variable "a" to 5
    user = User.new  #implement  a User class object named "user"
    user.name  #access user class name object 
    user.name = "Joe"  #set user class object name be  "joe"

#Ans2  
什麼是 module? 請寫一段程式碼說明一個 class 要如何使用一個 module 裡面的 method?

    Ruby methods are very similar to functions in any other programming language. Ruby methods are used to bundle one or more repeatable statements into a single unit.
    
    Method names should begin with a lowercase letter. If you begin a method name with an uppercase letter, Ruby might think that it is a constant and hence can parse the call incorrectly.
    
    Methods should be defined before calling them, otherwise Ruby will raise an exception for undefined method invoking.
    

        module Bite 
          def eat
            puts "eat the food"
          end
        end
    
        class Dog
          include Bite
        end
    
        dog = Dog.new
        dog.eat

#Ans3 請說明 class variable 和 instance variable 之間的差別
        A class variable (@@) is shared among the class and all of its descendants. A class instance variable (@) is not shared by the class's descendants.
    
        Class variable (@@)
    
        Let's have a class Foo with a class variable @@i, and accessors for reading and writing @@i:
    
        class Foo
          @@i = 1
    
          def self.i
            @@i
          end
    
          def self.i=(value)
            @@i = value
          end
    
        end

        And a derived class:
        class Bar < Foo
        end
        We see that Foo and Bar have the same value for @@i:

        Foo.i    # => 1
        Bar.i    # => 1
        And changing @@i in one changes it in both:

        Bar.i = 2
        Foo.i    # => 2
        Bar.i    # => 2
        Class instance variable (@)

        Let's make a simple class with a class instance variable @i and accessors for reading and writing @i:

        class Foo
          @i = 1

          def self.i
            @i
          end
          def self.i=(value)
            @i = value
          end
        end

        And a derived class:
        class Bar < Foo
        end
        We see that although Bar inherits the accessors for @i, it does not inherit @i itself:

        p Foo.i    # => 1
        p Bar.i    # => nil
        We can set Bar's @i without affecting Foo's @i:

        Bar.i = 2
        p Foo.i    # => 1
        p Bar.i    # => 2

#Ans4 
    bar is a class method, so calling bar on the Foo class works fine. baz is an instance method, so calling baz on the Foo class raises a NoMethodError. 
    
    class Foo
      def self.bar
        puts 'class method'
      end
      
      def baz
        puts 'instance method'
      end
    end
    
    Foo.bar # => "class method"
    Foo.baz # => NoMethodError: undefined method ‘baz’ for Foo:Class
    
    Foo.new.baz # => instance method
    Foo.new.bar # => NoMethodError: undefined method ‘bar’ for #<Foo:0x1e820>

#Ans5
    class User
    
      def initialize(name, sex, career)
        @name = name
        @sex = sex
        @career = career
      end
    end

#Ans6
    class A
        def self.B(method B)  <--instance method
        end
    end
    self.B be used in class

#Ans7
    attr_accessor is use to automatically generate a setting and getter method so an instance of the class can directly access an instance variable from outside the class.
    
    attr_reader only generates a getter method and attr_writer only generates a setting method, but attr_accessor generates both of them.

#Ans8
    A public method can be accessed from outside the class by the class or an instance of the class. A private method can only be accessed from within the class.

#Ans9
    Modules don’t have inheritance. It follows that entities or things are generally best modeled in classes, and characteristics or properties of entities or things are best encapsulated in modules.
    
    A class can have only one superclass(not support multiple inheritance), but it can mix in as many modules as it wants. If you’re using inheritance, give priority to creating a sensible superclass/subclass relationship.

#Ans10
    Parent class will not be able to access the methods in the module.

#Ans11
    A relational database is a digital database whose organization is based on the relational model of data.The various software systems used to maintain relational databases are known as a relational database management system (RDBMS). Virtually all relational database systems use SQL (Structured Query Language) as the language for querying and maintaining the database.