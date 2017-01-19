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
