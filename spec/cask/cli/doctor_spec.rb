require "spec_helper"
require "hbc/version"

describe Hbc::CLI::Doctor do
  it "displays some nice info about the environment" do
    expect do
      Hbc::CLI::Doctor.run
    end.to output(%r{\A==> macOS Release:}).to_stdout
  end

  it "raises an exception when arguments are given" do
    expect do
      Hbc::CLI::Doctor.run("argument")
    end.to raise_error(ArgumentError)
  end
end
