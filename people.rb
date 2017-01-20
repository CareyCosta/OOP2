class People

attr_writer :first_name, :last_name

def initialize(first_name, last_name)
  @first_name = first_name
  @last_name = last_name
end

def full_name
  "#{first_name} #{last_name}"
end

def greeting
  "Hi! My name is #{full_name}"
end
end

class Student < People

  def initialize(first_name, last_name)
    super(first_name, last_name)
  end

def full_name
  "#{ super }"
end

def learn
  "I get it!"
end
end

class Instructor < People

def initialize(first_name, last_name)
  super(first_name, last_name)
end

def full_name
  "Prof #{ super }"
end

def teach
  "Everything in Ruby is an Object!"
end
end

#irb(main):015:0> student.teach
#=> "Everything in Ruby is an Object!"
#irb(main):016:0> teacher.learn
#NoMethodError: undefined method `learn' for #<Instructor:0x007fca201b8e78>
#	from (irb):16
#	from /Users/careycosta/.rbenv/versions/2.3.1/bin/irb:11:in `<main>'
#irb(main):017:0>
