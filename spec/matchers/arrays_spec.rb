describe [1, 2, 3], 'Array' do
  it '#include' do
    expect(subject).to include(2)
    expect(subject).to include(1, 2)
    # se exite o elemento no Array
  end

  it 'contain_exactly' do
    expect(subject).to contain_exactly(1, 2, 3)
    # Se o Array possui esses elementos
  end

  it 'match_array' do
    expect(subject).to match_array([1, 2, 3])
    # Se o Array é desse jeito
  end
end
