require 'string_nao_vazia'

describe 'Classes' do 
  it 'be_instance_of' do
    str = String.new
    expect(str).to be_instance_of(String)
    expect(10).to be_instance_of(Integer)
    # Exatamente a classe
  end

  it 'be_kind_of' do
    str = StringNaoVazia.new
    expect(str).to be_kind_of(String)
    expect(str).to be_kind_of(StringNaoVazia)
    expect(10).to be_kind_of(Integer)
    # Pode ser por herança
  end

  it 'be_an / be_a' do
    str = StringNaoVazia.new

    expect(str).to be_an(String)
    expect(str).to be_an(StringNaoVazia)

    expect(str).to be_a(String)
    expect(str).to be_a(StringNaoVazia)

    # Pode ser por herança mesma coisa do kind só que com conotação
  end

  it 'respond_to' do
    str = StringNaoVazia.new
    expect(str).to respond_to(:size)
    expect(str).to respond_to(:count)
    # se tal classe tem um metodo
  end
end
