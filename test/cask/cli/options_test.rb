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

  it "supports setting the prefpanedir" do
    Cask::CLI.process_options %w{help --prefpanedir=/some/path/foo}

    Cask.prefpanedir.must_equal Pathname('/some/path/foo')
  end

  it "supports setting the prefpanedir from ENV" do
    ENV['HOMEBREW_CASK_OPTS'] = "--prefpanedir=/some/path/bar"

    Cask::CLI.process_options %w{help}

    Cask.prefpanedir.must_equal Pathname('/some/path/bar')
  end

  it "supports setting the qlplugindir" do
    Cask::CLI.process_options %w{help --qlplugindir=/some/path/foo}

    Cask.qlplugindir.must_equal Pathname('/some/path/foo')
  end

  it "supports setting the qlplugindir from ENV" do
    ENV['HOMEBREW_CASK_OPTS'] = "--qlplugindir=/some/path/bar"

    Cask::CLI.process_options %w{help}

    Cask.qlplugindir.must_equal Pathname('/some/path/bar')
  end

  it "supports setting the fontdir" do
    Cask::CLI.process_options %w{help --fontdir=/some/path/foo}

    Cask.fontdir.must_equal Pathname('/some/path/foo')
  end

  it "supports setting the fontdir from ENV" do
    ENV['HOMEBREW_CASK_OPTS'] = "--fontdir=/some/path/bar"

    Cask::CLI.process_options %w{help}

    Cask.fontdir.must_equal Pathname('/some/path/bar')
  end

  it "allows additional options to be passed through" do
    rest = Cask::CLI.process_options %w{edit foo --create --appdir=/some/path/qux}

    Cask.appdir.must_equal Pathname('/some/path/qux')
    rest.must_equal %w{edit foo --create}
  end

  describe "--debug" do
    it "sets the CLI's debug variable to true" do
      Cask::CLI.process_options %w{help --debug}
      Cask::CLI.instance_variable_get(:@debug).must_equal true
    end
  end

  after do
    ENV['HOMEBREW_CASK_OPTS'] = nil
  end
end
