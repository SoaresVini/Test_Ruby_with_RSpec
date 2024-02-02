require 'pessoa'

describe 'Atributos let' do
  let(:pes) { Pessoa.new }

  it 'have_attributes' do
    pes.nome = 'vini'
    pes.idade = 20

    expect(pes).to have_attributes(nome: starting_with('v'), idade: (be <= 20))
  end

  it 'have_attributes' do
    pes.nome = 'joao'
    pes.idade = 15

    expect(pes).to have_attributes(nome: starting_with('j'), idade: (be <= 20))
  end
end
