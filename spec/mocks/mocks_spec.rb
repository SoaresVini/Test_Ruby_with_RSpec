require "student"
require "course"

describe 'Mocks' do # rubocop:disable Metrics/BlockLength
  it '#bar' do
    # setup
    student = Student.new
    # verify
    expect(student).to receive(:bar) # esperando ele chamar o metodo
    # exercice
    student.bar
  end

  it 'args' do
    student = Student.new

    expect(student).to receive(:foo).with(123)

    student.foo(123)
  end

  it 'repetição' do
    student = Student.new

    expect(student).to receive(:foo).with(123).twice

    student.foo(123)
    student.foo(123)
  end

  it 'retorno' do
    student = Student.new
    expect(student).to receive(:foo).with(123).and_return(true)
    puts student.foo(123)
  end
end
