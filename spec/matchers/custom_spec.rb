RSpec::Matchers.define :be_a_multiple_of do |expected|
  match do |actual|
    actual % expected == 0
  end

  failure_message do |actual|
    "Expected that #{actual} woulb be a multiple od #{expected}"
  end

  description do
    "be a multiples of #{expected}"
  end
end

describe 12, 'Custom Matcher', type: 'collection' do
  it { is_expected.to be_a_multiple_of(2) }
end
