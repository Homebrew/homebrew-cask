class Cask::FakeSystemCommand
  def self.fake_response_for(command, response='')
    @responses[command] = response
  end

  def self.init
    @responses = {}
  end

  def self.clear
    @responses = {}
  end

  def self.run(command)
    @responses ||= {}
    unless @responses.key?(command)
      fail("no response faked for #{command.inspect}")
    end
    @responses[command].split("\n")
  end
end

module FakeSystemCommandHooks
  def before_setup
    Cask::FakeSystemCommand.init
    super
  end

  def after_teardown
    super
    Cask::FakeSystemCommand.clear
  end
end

class MiniTest::Spec
  include FakeSystemCommandHooks
end
