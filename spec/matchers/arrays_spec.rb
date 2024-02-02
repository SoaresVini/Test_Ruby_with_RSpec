RSpec::Matchers.define_negated_matcher :exclude, :include
# cria o inverso para um Matcher 
describe [1, 2, 3], 'Array' do
  it '#include' do
    expect(subject).to include(2)
    expect(subject).to include(1, 2)
  end

  it { expect(subject).to exclude(4) } # se exite o elemento no Array

  it 'contain_exactly' do
    expect(subject).to contain_exactly(1, 2, 3)
    # Se o Array possui esses elementos
  end

  it 'match_array' do
    expect(subject).to match_array([1, 2, 3])
    # Se o Array é desse jeito
  end
end
