require "student"
require "course"

describe 'Stub' do # rubocop:disable Metrics/BlockLength
  it 'has_finished' do
    student = Student.new
    course = Course.new

    allow(student).to receive(:has_finished?).with(course).and_return(true)

    course_finished = student.has_finished?(course)

    expect(course_finished).to be true
  end

  it 'Argumentoos Dinâmicos' do
    student = Student.new

    allow(student).to receive(:foo) do |arg|
      if arg == :hello
        'olá'
      elsif arg == :hi
        'Hi!!!'
      end
    end

    expect(student.foo(:hello)).to eq('olá')
    expect(student.foo(:hi)).to eq('Hi!!!')
  end

  it 'Qualquer instancia de class' do
    student = Student.new
    other_student = Student.new

    allow_any_instance_of(Student).to receive(:bar).and_return(true)

    expect(student.bar).to be true
    expect(other_student.bar).to be true
  end

  it 'Erro de uma classe' do
    student = Student.new

    allow(student).to receive(:bar).and_raise(RuntimeError)

    expect{ student.bar }.to raise_error(RuntimeError)
  end
end
