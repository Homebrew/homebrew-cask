require 'test_helper'

module RecordEditorCalls
  def exec_editor(*command)
    editor_commands << command
  end

  def reset!
    @editor_commands = []
  end

  def editor_commands
    @editor_commands ||= []
  end
end

module Cask::CLI::Edit
  extend RecordEditorCalls
end

describe Cask::CLI::Edit do
  before do
    Cask::CLI::Edit.reset!
  end

  it 'opens the editor for the specified cask' do
    Cask::CLI::Edit.run('alfred')
    Cask::CLI::Edit.editor_commands.must_equal [
      [Cask.path('alfred')]
    ]
  end

  it 'throws away additional arguments and uses the first' do
    Cask::CLI::Edit.run('adium', 'alfred')
    Cask::CLI::Edit.editor_commands.must_equal [
      [Cask.path('adium')]
    ]
  end

  it 'raises an exception when the cask doesnt exist' do
    lambda {
      Cask::CLI::Edit.run('notacask')
    }.must_raise CaskUnavailableError
  end
end
