describe 'Matchers de igualdade' do
  it '#equal - Testa se é o mesmo objeto' do
    x = 'vini'
    y = 'vini'

    expect(x).not_to equal(y)
    expect(x).to equal(x)
  end

  it '#eql - Testa se é o mesmo valor' do
    x = 'vini'
    y = 'vini'
    z = 'Katt'

    expect(x).to eql(y)
    expect(x).not_to eql(z)
  end

  it '#eq - Testa se é o mesmo valor' do
    x = 'vini'
    y = 'vini'
    z = 'Katt'

    expect(x).to eq(y)
    expect(x).not_to eq(z)
  end

  it '#be - Testa se é o mesmo objeto' do
    x = 'vini'
    y = 'vini'

    expect(x).not_to be(y)
    expect(x).to be(x)
  end
end
