class Cask::FakeSystemCommand
  def self.fake_response_for(command, response='')
    @responses ||= {}
    @responses[command] = response
  end

  def self.system_calls
    @system_calls
  end

  def self.init
    @responses = {}
  end

  def self.clear
    @responses = {}
    @system_calls = Hash.new(0)
  end

  def self.run(command, options={})
    command = Cask::SystemCommand._process_options(command, options)
    @responses ||= {}
    @system_calls ||= Hash.new(0)
    unless @responses.key?(command)
      fail("no response faked for #{command.inspect}, faked responses are: #{@responses.inspect}")
    end
    @system_calls[command] += 1
    if options[:plist]
      Plist::parse_xml(@responses[command])
    else
      @responses[command]
    end
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
