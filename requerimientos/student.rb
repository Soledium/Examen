

class Student
    attr_accessor :rut, :name, :last_name1, :last_name2, :address

    def initialize(rut, name, last_name1, last_name2, address)
        @rut=rut
        @name=name
        @last_name1=last_name1
        @last_name2=last_name2
        @address=address
    end

end

name1 = Student.new('11.234567-1', 'Nath1', 'OBrien1', 'Donoso1', 'address1')
name2 = Student.new('12.234567-2', 'Nath2', 'OBrien2', 'Donoso2', 'address1')
name3 = Student.new('13.234567-3', 'Nath3', 'OBrien3', 'Donoso3', 'address1')
name4 = Student.new('14.234567-4', 'Nath4', 'OBrien4', 'Donoso4', 'address1')
name5 = Student.new('15.234567-5', 'Nath5', 'OBrien5', 'Donoso5', 'address1')



