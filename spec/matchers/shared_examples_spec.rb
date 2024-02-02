require 'pessoa'

shared_examples 'status' do |sentimento|
  it "#{sentimento}" do
    pessoa.send("#{sentimento}!")
    expect(pessoa.status).to eq("Sentindo-se #{sentimento.capitalize}")
  end
end

describe 'Pessoa' do
  subject(:pessoa) { Pessoa.new }

  include_examples 'status', :feliz
  it_behaves_like 'status', :triste
  it_should_behave_like 'status', :contente

  # it 'feliz!' o
  #   pessoa.feliz!
  #   expect(pessoa.status).to eq('Sentindo-se Feliz!')
  # end

  # it 'feliz!' do
  #   pessoa.triste!
  #   expect(pessoa.status).to eq('Sentindo-se Triste!')
  # end

  # it 'content!' do
  #   pessoa.contente!
  #   expect(pessoa.status).to eq('Sentindo-se Contente!')
  # end
end
