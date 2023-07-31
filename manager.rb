# make a manager
# a manager can do everything an employee can do, and can also send reports

class Employee
  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :first_name, :active
  
  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]    
  end

  def print_info
    p "#{first_name} #{@last_name} makes $#{@salary} per year."
  end

  def give_annual_raise
    @salary *= 1.05
  end
end

class Manager < Employee
  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

  
  # make a method in manager class called give_all_raises
  # run it to make sure it works
  def give_all_raises
    # ** print out all employees in that method
    # get 1 employee out of the array
    # give that employee a raise
    # figure out how to give all the employees raises (loop)
    @employees.each do |employee|
      employee.give_annual_raise
    end
    # @employees[0].give_annual_raise
    # @employees[1].give_annual_raise    
  end

  def fire_all_employees    
    @employees.each do |employee|
      employee.active = false
    end
    p "firing all employees"
  end


  
  def send_report
    p "about to go send the report"
    # some other logic here
    p "just sent the report"
  end
end

employee1 = Employee.new(first_name: "Majora", last_name: "Carter", salary: 80000, active: true)
# p employee1.first_name
# employee1.first_name=("Amy")
# employee1.print_info

employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 100000, active: false)
# employee2.print_info


manager = Manager.new(first_name: "Manny", last_name: "Manageros", salary: 200_000, active: true, employees: [employee1, employee2])

# manager.print_info
# manager.send_report


# give all employees a raise
# pseudocode



p employee1.active
p employee2.active

manager.fire_all_employees

p employee1.active
p employee2.active





# fire all employees



# DRY code
# DON'T 
# REPEAT
# YOURSELF

# WET
# write everything twice