# Add the 2 requires you will need here

require './lib/student'

describe Student do
  describe '#initialize' do
    it 'is an instance of student' do
      # write the code to initialize a new student object
      student = Student.new('Penelope')

      expect(student).to be_a Student #assertion
    end
    # test it has a name
    it 'is given a name' do
      student = Student.new('Penelope')

      expect(student.name).to eq("Penelope")
    end

    # test it has cookies
    it 'has an empty array of cookies' do
      student = Student.new('Penelope')

      expect(student.cookies).to eq([])

    end
  end

  # test it can add cookies
  describe "#add_cookie" do
  it 'adds a cookie to our @cookies list' do
    student = Student.new ('Penelope')
    student.add_cookie('Chocolate Chunk')
    student.add_cookie('Snickerdoodle')
    
    expect(student.cookies).to eq(['Chocolate Chunk', 'Snickerdoodle'])
  end
  end
end
