require 'test_helper'

describe Hbc::CLI do
  it "supports setting the appdir" do
    Hbc::CLI.process_options %w{help --appdir=/some/path/foo}

    Hbc.appdir.must_equal Pathname('/some/path/foo')
  end

  it "supports setting the appdir from ENV" do
    ENV['HOMEBREW_CASK_OPTS'] = "--appdir=/some/path/bar"

    Hbc::CLI.process_options %w{help}

    Hbc.appdir.must_equal Pathname('/some/path/bar')
  end

  it "supports setting the prefpanedir" do
    Hbc::CLI.process_options %w{help --prefpanedir=/some/path/foo}

    Hbc.prefpanedir.must_equal Pathname('/some/path/foo')
  end

  it "supports setting the prefpanedir from ENV" do
    ENV['HOMEBREW_CASK_OPTS'] = "--prefpanedir=/some/path/bar"

    Hbc::CLI.process_options %w{help}

    Hbc.prefpanedir.must_equal Pathname('/some/path/bar')
  end

  it "supports setting the qlplugindir" do
    Hbc::CLI.process_options %w{help --qlplugindir=/some/path/foo}

    Hbc.qlplugindir.must_equal Pathname('/some/path/foo')
  end

  it "supports setting the qlplugindir from ENV" do
    ENV['HOMEBREW_CASK_OPTS'] = "--qlplugindir=/some/path/bar"

    Hbc::CLI.process_options %w{help}

    Hbc.qlplugindir.must_equal Pathname('/some/path/bar')
  end

  it "supports setting the colorpickerdir" do
    Hbc::CLI.process_options %w{help --colorpickerdir=/some/path/foo}

    Hbc.colorpickerdir.must_equal Pathname('/some/path/foo')
  end

  it "supports setting the colorpickerdir from ENV" do
    ENV['HOMEBREW_CASK_OPTS'] = "--colorpickerdir=/some/path/bar"

    Hbc::CLI.process_options %w{help}

    Hbc.colorpickerdir.must_equal Pathname('/some/path/bar')
  end

  it "supports setting the fontdir" do
    Hbc::CLI.process_options %w{help --fontdir=/some/path/foo}

    Hbc.fontdir.must_equal Pathname('/some/path/foo')
  end

  it "supports setting the fontdir from ENV" do
    ENV['HOMEBREW_CASK_OPTS'] = "--fontdir=/some/path/bar"

    Hbc::CLI.process_options %w{help}

    Hbc.fontdir.must_equal Pathname('/some/path/bar')
  end

  it "supports setting the servicedir" do
    Hbc::CLI.process_options %w{help --servicedir=/some/path/foo}

    Hbc.servicedir.must_equal Pathname('/some/path/foo')
  end

  it "supports setting the servicedir from ENV" do
    ENV['HOMEBREW_CASK_OPTS'] = "--servicedir=/some/path/bar"

    Hbc::CLI.process_options %w{help}

    Hbc.servicedir.must_equal Pathname('/some/path/bar')
  end

  it "allows additional options to be passed through" do
    rest = Hbc::CLI.process_options %w{edit foo --create --appdir=/some/path/qux}

    Hbc.appdir.must_equal Pathname('/some/path/qux')
    rest.must_equal %w{edit foo --create}
  end

  describe "when a mandatory argument is missing" do
    it "shows a user-friendly error message" do
      lambda {
        Hbc::CLI.process_options %w{install -f}
      }.must_raise Hbc::CaskError
    end
  end

  describe "given an ambiguous option" do
    it "shows a user-friendly error message" do
      lambda {
        Hbc::CLI.process_options %w{edit -c}
      }.must_raise Hbc::CaskError
    end
  end

  describe "--debug" do
    it "sets the Cask debug method to true" do
      Hbc::CLI.process_options %w{help --debug}
      Hbc.debug.must_equal true
      Hbc.debug = false
    end
  end

  describe "--help" do
    it "sets the Cask help method to true" do
      Hbc::CLI.process_options %w{foo --help}
      Hbc.help.must_equal true
      Hbc.help = false
    end
  end

  after do
    ENV['HOMEBREW_CASK_OPTS'] = nil
  end
end
