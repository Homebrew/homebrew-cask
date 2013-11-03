require 'test_helper'

describe Cask::CLI::List do
  it 'lists the installed casks in a pretty fashion' do
    casks = %w[local-caffeine local-transmission].map { |c| Cask.load(c) }

    casks.each { |c| TestHelper.install_without_artifacts(c) }

    lambda {
      Cask::CLI::List.run
    }.must_output <<-OUTPUT.gsub(/^ */, '')
      local-caffeine
      local-transmission
    OUTPUT
  end

  it 'given a set of installed casks, lists the installed files for those casks' do
    casks = %w[local-caffeine local-transmission].map { |c| Cask.load(c) }

    casks.each { |c| TestHelper.install_without_artifacts(c) }

    caffeine, transmission = casks

    lambda {
      Cask::CLI::List.run('local-transmission', 'local-caffeine')
    }.must_output <<-OUTPUT.gsub(/^ */, '')
      #{transmission.destination_path}/Transmission.app/Contents/ (489 files)
      #{caffeine.destination_path}/Caffeine.app/Contents/ (13 files)
    OUTPUT
  end
end
