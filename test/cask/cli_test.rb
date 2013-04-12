require 'test_helper'

describe Cask::CLI do
  it "lists the taps for casks that show up in two taps" do
    Cask::CLI.nice_listing(%w[
      phinze-cask/adium
      phinze-cask/google-chrome
      passcod-cask/adium
    ]).must_equal(%w[
      google-chrome
      passcod-cask/adium
      phinze-cask/adium
    ])
  end
end
