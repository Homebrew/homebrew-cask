class Cask::FakeSystemCommand
  def self.responses
    @responses ||= {}
  end

  def self.expectations
    @expectations ||= {}
  end

  def self.system_calls
    @system_calls ||= Hash.new(0)
  end

  def self.clear
    @responses    = nil
    @expectations = nil
    @system_calls = nil
  end

  def self.stubs_command(command, response='')
    responses[command] = response
  end

  def self.expects_command(command, response='', times=1)
    stubs_command(command, response)
    expectations[command] = times
  end

  def self.verify_expectations!
    expectations.each do |command, times|
      unless system_calls[command] == times
        fail("expected #{command.inspect} to be run #{times} times, but got #{system_calls[command]}")
      end
    end
  end

  def self.run(command, options={})
    command = Cask::SystemCommand._process_options(command, options)
    unless responses.key?(command)
      fail("no response faked for #{command.inspect}, faked responses are: #{responses.inspect}")
    end
    system_calls[command] += 1
    Cask::SystemCommand::Result.new(command, responses[command], '', 0)
  end

  def self.run!(command, options={})
    run(command, options.merge(:must_succeed => true))
  end
end

module FakeSystemCommandHooks
  def after_teardown
    super
    Cask::FakeSystemCommand.verify_expectations!
  ensure
    Cask::FakeSystemCommand.clear
  end
end

class MiniTest::Spec
  include FakeSystemCommandHooks
end
