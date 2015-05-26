require 'test_helper'

# monkeypatch for testing
class Hbc::CLI::Edit
  def self.exec_editor(*command)
    editor_commands << command
  end

  def self.reset!
    @editor_commands = []
  end

  def self.editor_commands
    @editor_commands ||= []
  end
end

describe Hbc::CLI::Edit do
  before do
    Hbc::CLI::Edit.reset!
  end

  it 'opens the editor for the specified Cask' do
    Hbc::CLI::Edit.run('alfred')
    Hbc::CLI::Edit.editor_commands.must_equal [
      [Hbc.path('alfred')]
    ]
  end

  it 'throws away additional arguments and uses the first' do
    Hbc::CLI::Edit.run('adium', 'alfred')
    Hbc::CLI::Edit.editor_commands.must_equal [
      [Hbc.path('adium')]
    ]
  end

  it 'raises an exception when the Cask doesnt exist' do
    lambda {
      Hbc::CLI::Edit.run('notacask')
    }.must_raise Hbc::CaskUnavailableError
  end

  describe "when no Cask is specified" do
    it "raises an exception" do
      lambda {
        Hbc::CLI::Edit.run()
      }.must_raise Hbc::CaskUnspecifiedError
    end
  end

  describe "when no Cask is specified, but an invalid option" do
    it "raises an exception" do
      lambda {
        Hbc::CLI::Edit.run('--notavalidoption')
      }.must_raise Hbc::CaskUnspecifiedError
    end
  end
end
