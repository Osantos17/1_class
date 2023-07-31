# model an employee using ruby
# first name, last name, email, active status

#how should i do this? what should i use?


# array

# employee1 = ["Marjora", "Carter", 8000, true]
# p employee1[0] + " " + employee1[1] + " $" + employee1[2].to_s

# employee2 = ["Jon", "Carter", 100_000, false]

# p employee2[0] + " " + employee2[1] + " $" + employee2[2].to_s

class Employee
  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :first_name
  attr_writer :active
  attr_writer :last_name

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def info
    p "#{@first_name} #{@last_name} salary is: $#{@salary} per year, currently #{@active}."
  end
end

emp1 = Employee.new(first_name: "Jon", last_name: "Red", salary: 120_000, active: true)
emp2 = Employee.new(first_name: "Rita", last_name: "Blue", salary: 140_000, active: true)
emp1.info
emp1.active=("terminated")
emp1.info
emp2.info
