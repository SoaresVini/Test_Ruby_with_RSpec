describe 'Matcher output' do
  it { expect { puts 'Vinicius' }.to output.to_stdout }
  it { expect { print 'Vinicius' }.to output('Vinicius').to_stdout }
  it { expect { puts 'Vinicius' }.to output(/Vinicius/).to_stdout }

  it { expect { warn 'Vinicius' }.to output.to_stderr }
  # it { expect { warn 'Vinicius' }.to output('Vinicius').to_stderr }
  it { expect { warn 'Vinicius' }.to output(/Vinicius/).to_stderr }
end
