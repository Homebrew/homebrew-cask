require 'test_helper'

describe Cask::CLI do
  it "supports setting the appdir" do
    Cask::CLI.process_options %w{help --appdir=/some/path/foo}

    Cask.appdir.must_equal Pathname('/some/path/foo')
  end

  it "supports setting the appdir from ENV" do
    ENV['HOMEBREW_CASK_OPTS'] = "--appdir=/some/path/bar"

    Cask::CLI.process_options %w{help}

    Cask.appdir.must_equal Pathname('/some/path/bar')
  end

  it "allows additional options to be passed through" do
    rest = Cask::CLI.process_options %w{edit foo --create --appdir=/some/path/qux}

    Cask.appdir.must_equal Pathname('/some/path/qux')
    rest.must_equal %w{edit foo --create}
  end

  after do
    ENV['HOMEBREW_CASK_OPTS'] = nil
  end
end
