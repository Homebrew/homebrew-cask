require 'test_helper'

describe Cask::Container::Naked do
  it "saves files with spaces in them from uris with encoded spaces" do
    SpaceyCask = Class.new(Cask)
    SpaceyCask.class_eval do
      url 'http://example.com/kevin%20spacey.pkg'
      version '1.2'
    end

    cask                 = SpaceyCask.new
    path                 = '/tmp/downloads/kevin-spacey-1.2.pkg'
    expected_destination = cask.destination_path.join('kevin spacey.pkg')
    expected_command     = %Q(ditto '#{path}' '#{expected_destination}' 2>&1)
    Cask::FakeSystemCommand.fake_response_for(expected_command)

    container = Cask::Container::Naked.new(cask, path, Cask::FakeSystemCommand)
    container.extract

    Cask::FakeSystemCommand.system_calls[expected_command].must_equal 1
  end
end
