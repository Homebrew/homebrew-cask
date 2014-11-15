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

  it "supports setting the colorpickerdir" do
    Cask::CLI.process_options %w{help --colorpickerdir=/some/path/foo}

    Cask.colorpickerdir.must_equal Pathname('/some/path/foo')
  end

  it "supports setting the colorpickerdir from ENV" do
    ENV['HOMEBREW_CASK_OPTS'] = "--colorpickerdir=/some/path/bar"

    Cask::CLI.process_options %w{help}

    Cask.colorpickerdir.must_equal Pathname('/some/path/bar')
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

  it "supports setting the widgetdir" do
    Cask::CLI.process_options %w{help --widgetdir=/some/path/foo}

    Cask.widgetdir.must_equal Pathname('/some/path/foo')
  end

  it "supports setting the widgetdir from ENV" do
    ENV['HOMEBREW_CASK_OPTS'] = "--widgetdir=/some/path/bar"

    Cask::CLI.process_options %w{help}

    Cask.widgetdir.must_equal Pathname('/some/path/bar')
  end

  it "supports setting the servicedir" do
    Cask::CLI.process_options %w{help --servicedir=/some/path/foo}

    Cask.servicedir.must_equal Pathname('/some/path/foo')
  end

  it "supports setting the servicedir from ENV" do
    ENV['HOMEBREW_CASK_OPTS'] = "--servicedir=/some/path/bar"

    Cask::CLI.process_options %w{help}

    Cask.servicedir.must_equal Pathname('/some/path/bar')
  end

  it "allows additional options to be passed through" do
    rest = Cask::CLI.process_options %w{edit foo --create --appdir=/some/path/qux}

    Cask.appdir.must_equal Pathname('/some/path/qux')
    rest.must_equal %w{edit foo --create}
  end

  describe "when a mandatory argument is missing" do
    it "shows a user-friendly error message" do
      lambda {
        Cask::CLI.process_options %w{install -f}
      }.must_raise CaskError
    end
  end

  describe "given an ambiguous option" do
    it "shows a user-friendly error message" do
      lambda {
        Cask::CLI.process_options %w{edit -c}
      }.must_raise CaskError
    end
  end

  describe "--debug" do
    it "sets the Cask debug method to true" do
      Cask::CLI.process_options %w{help --debug}
      Cask.debug.must_equal true
      Cask.debug = false
    end
  end

  after do
    ENV['HOMEBREW_CASK_OPTS'] = nil
  end
end
