describe 'Matchers de comparação' do  # rubocop:disable Metrics/BlockLength
  it '>' do
    expect(1).to be > 0
  end

  it '<' do
    expect(0).to be < 1
  end

  it '>=' do
    expect(1).to be >= 1
    expect(1).to be >= 0
  end

  it '<=' do
    expect(0).to be <= 0
    expect(0).to be <= 1
  end

  it 'be_between inclusive' do
    expect(8).to be_between(1, 10).inclusive
    expect(1).to be_between(1, 10).inclusive
    expect(10).to be_between(1, 10).inclusive
  end

  # it 'be_between inclusive / falhas agregadas' do
  #   expect(8).to be_between(1, 10).inclusive
  #   expect(11).to be_between(1, 10).inclusive
  #   expect(0).to be_between(1, 10).inclusive
  # end

  it 'be_between exclusive' do
    expect(8).to be_between(1, 10).exclusive
    expect(2).to be_between(1, 10).exclusive
    expect(9).to be_between(1, 10).exclusive
  end

  it 'match' do
    expect('fulano@com.br').to match(/..@../)
  end

  it 'start_with' do
    expect('fulano e siclano').to start_with('fulano')
    expect([1, 2, 3, 4, 5]).to start_with(1)
  end

  it 'end_with' do
    expect('fulano e siclano').to end_with('siclano')
    expect([1, 2, 3, 4, 5]).to end_with(5)
  end
end
