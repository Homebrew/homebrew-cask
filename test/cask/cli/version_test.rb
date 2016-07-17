require "test_helper"

describe "brew cask --version" do
  it "respects the --version argument" do
    lambda do
      Hbc::CLI::NullCommand.new("--version").run
    end.must_output "#{Hbc.full_version}\n"
  end
end
