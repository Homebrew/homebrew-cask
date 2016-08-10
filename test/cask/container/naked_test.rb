require "test_helper"

describe Hbc::Container::Naked do
  it "saves files with spaces in them from uris with encoded spaces" do
    cask = Hbc::Cask.new("spacey") do
      url "http://example.com/kevin%20spacey.pkg"
      version "1.2"
    end

    path                 = "/tmp/downloads/kevin-spacey-1.2.pkg"
    expected_destination = cask.staged_path.join("kevin spacey.pkg")
    expected_command     = ["/usr/bin/ditto", "--", path, expected_destination]
    Hbc::FakeSystemCommand.stubs_command(expected_command)

    container = Hbc::Container::Naked.new(cask, path, Hbc::FakeSystemCommand)
    container.extract

    Hbc::FakeSystemCommand.system_calls[expected_command].must_equal 1
  end
end
