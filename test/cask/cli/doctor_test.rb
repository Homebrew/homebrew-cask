require 'test_helper'
require 'hbc/version'

describe Hbc::CLI::Doctor do
  it 'displays some nice info about the environment' do
    out, err = capture_io do
      Hbc::CLI::Doctor.run
    end
    # no point in trying to match more of this environment-specific info
    out.must_match /\A==> OS X Release:/
  end

  it "raises an exception when arguments are given" do
    lambda {
      Hbc::CLI::Doctor.run('argument')
    }.must_raise ArgumentError
  end
end
