class Employee

    attr_reader :name, :salary, :title, :boss

    def initialize(name, salary, title, boss = nil)
        @name = name
        @salary = salary
        @title = title
        @boss = boss
    end

    def bonus(multiplier)
        bonus = @salary * multiplier
    end

end 

class Manager < Employee
    attr_accessor :subordinates
    def initialize(name, salary, title, boss)
        super(name, salary, title, boss) 
        @subordinates = []  
    end

    #subordinate salary + subordinate's subordinate salary 

    def total_salary(subordinates)
        sum = 0
        subordinates.each do |employee|
            if employee.is_a? (Manager)
                sum += employee.salary + total_salary(employee.subordinates)
            else  
                sum += employee.salary
            end 
        end
        sum
    end
    

    def bonus(multiplier)
       bonus = (total_salary(@subordinates))*multiplier
    end
end 

ned = Manager.new("Ned",1000000, "Founder",nil)
darren = Manager.new("Darren",78000, "TA Manager", ned)
ned.subordinates << darren 
shawna = Employee.new("Shawna",12000, "TA", darren)
david = Employee.new("David",10000, "TA", darren)
darren.subordinates << shawna 
darren.subordinates << david

p ned.bonus(5)
p darren.bonus(4)
p david.bonus(3)


