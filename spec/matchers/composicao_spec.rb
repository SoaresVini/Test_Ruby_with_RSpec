require_relative '../../helpers/helper'

describe 'Ruby on Rails' do
  # def fruta
  #   %w(banana laranja uva).sample
  # end

  it { is_expected.to start_with('Ruby').and end_with('Rails') }

  it { expect(fruta).to eq('banana').or eq('laranja').or eq('uva') }
end
