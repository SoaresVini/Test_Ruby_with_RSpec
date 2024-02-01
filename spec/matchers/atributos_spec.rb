require 'pessoa'

describe 'Atributos' do
  it 'have_attributes' do
    pessoa = Pessoa.new
    pessoa.nome = 'vini'
    pessoa.idade = 20

    expect(pessoa).to have_attributes(nome: starting_with('v'), idade: (be <= 20))
  end
end
