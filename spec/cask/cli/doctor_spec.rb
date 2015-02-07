require 'spec_helper'
require 'hbc/version'

describe Hbc::CLI::Doctor do
  it 'displays some nice info about the environment' do
    expect {
      Hbc::CLI::Doctor.run
    }.to output(/\A==> OS X Release:/).to_stdout
  end

  it "raises an exception when arguments are given" do
    expect {
      Hbc::CLI::Doctor.run('argument')
    }.to raise_error(ArgumentError)
  end
end
