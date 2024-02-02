require 'pessoa'

describe 'Atributos' do
  # before(:each) do
  #   @pessoa = Pessoa.new
  # end

  # after(:each) do
  #   puts "#{@pessoa.nome} idade #{@pessoa.idade}"
  # end

  around(:each) do |test|
    @pessoa = Pessoa.new

    test.run #Roda o teste

    puts "#{@pessoa.nome} idade #{@pessoa.idade}"
  end

  it 'have_attributes' do
    @pessoa.nome = 'vini'
    @pessoa.idade = 20

    expect(@pessoa).to have_attributes(nome: starting_with('v'), idade: (be <= 20))
  end

  it 'have_attributes' do
    @pessoa.nome = 'joao'
    @pessoa.idade = 15

    expect(@pessoa).to have_attributes(nome: starting_with('j'), idade: (be <= 20))
  end
end
