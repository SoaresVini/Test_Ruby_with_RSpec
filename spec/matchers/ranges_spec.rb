describe (1..5), 'Ranges' do
  it { is_expected.to cover(4) }
  it { is_expected.to cover(1, 5) }
  it { is_expected.not_to cover(7) }
end
