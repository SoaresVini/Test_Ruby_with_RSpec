describe 'be_within' do
  it { expect(12.5).to be_within(0.5).of(12) }
  it { expect(12.6).not_to be_within(0.5).of(12) }
  it { expect(11.5).to be_within(0.5).of(12) }
  it { expect([12.6, 12.8, 12.4]).to all(be_within(0.9).of(12)) }
  # para numeros flutuantes, se o valor tiver no range de 0.5 a menos que 12 ou a mais deve passar |Delta - 0.5 |
end
