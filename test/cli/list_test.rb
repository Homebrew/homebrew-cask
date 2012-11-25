require 'test_helper'

describe Cask::CLI::List do
  it "lists the installed casks in a pretty fashion" do
    shutup do
      Cask::CLI::Install.run('local-transmission', 'local-caffeine')
    end

    lambda {
      Cask::CLI::List.run
    }.must_output <<-OUTPUT.gsub(/^ */, '')
      local-caffeine
      local-transmission
    OUTPUT
  end

  it "lists the taps for casks that show up in two taps" do
    skip("need to move this implementation to an easier to test location")
    Cask.stubs(:installed).returns(%w[
      phinze-cask/adium
      phinze-cask/google-chrome
      passcod-cask/adium
    ])
    lambda {
      Cask::CLI::List.run
    }.must_output <<-OUTPUT.gsub(/^ */, '')
      google-chrome
      passcod-cask/adium
      phinze-cask/adium
    OUTPUT
  end
end
