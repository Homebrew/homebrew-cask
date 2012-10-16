require 'test_helper'

describe Cask::CLI::List do
  it "lists the installed casks in a pretty fashion" do
    Cask.stubs(:installed).returns(%w[
      phinze-cask/adium
      phinze-cask/google-chrome
    ])
    lambda {
      Cask::CLI::List.run
    }.must_output <<-OUTPUT.gsub(/^ */, '')
      adium
      google-chrome
    OUTPUT
  end

  it "lists the taps for casks that show up in two" do
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
