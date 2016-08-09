require "test_helper"

describe Hbc::CLI::Uninstall do
  it "shows an error when a bad Cask is provided" do
    lambda {
      Hbc::CLI::Uninstall.run("notacask")
    }.must_raise Hbc::CaskUnavailableError
  end

  it "shows an error when a Cask is provided that's not installed" do
    lambda {
      Hbc::CLI::Uninstall.run("anvil")
    }.must_raise Hbc::CaskNotInstalledError
  end

  it "tries anyway on a non-present Cask when --force is given" do
    lambda do
      Hbc::CLI::Uninstall.run("anvil", "--force")
    end # wont_raise
  end

  it "can uninstall and unlink multiple Casks at once" do
    caffeine = Hbc.load("local-caffeine")
    transmission = Hbc.load("local-transmission")

    shutup do
      Hbc::Installer.new(caffeine).install
      Hbc::Installer.new(transmission).install
    end

    caffeine.must_be :installed?
    transmission.must_be :installed?

    shutup do
      Hbc::CLI::Uninstall.run("local-caffeine", "local-transmission")
    end

    caffeine.wont_be :installed?
    File.exist?(Hbc.appdir.join("Transmission.app")).must_equal false
    transmission.wont_be :installed?
    File.exist?(Hbc.appdir.join("Caffeine.app")).must_equal false
  end

  describe "when Casks in Taps have been renamed or removed" do
    before do
      @app = Hbc.appdir.join("ive-been-renamed.app").tap(&:mkpath)
      @app.join("Contents").tap(&:mkpath)
          .join("Info.plist").tap(&FileUtils.method(:touch))

      @caskroom_path = Hbc.caskroom.join("ive-been-renamed").tap(&:mkpath)

      @saved_caskfile = @caskroom_path.join(".metadata", "latest", "timestamp", "Casks").tap(&:mkpath)
                                      .join("ive-been-renamed.rb")

      IO.write @saved_caskfile, <<-EOF.undent
        cask 'ive-been-renamed' do
          version :latest

          app 'ive-been-renamed.app'
        end
      EOF
    end

    after do
      @app.rmtree if @app.exist?
      @caskroom_path.rmtree if @caskroom_path.exist?
    end

    it "can still uninstall those Casks" do
      shutup do
        Hbc::CLI::Uninstall.run("ive-been-renamed")
      end

      @app.wont_be :exist?
      @caskroom_path.wont_be :exist?
    end
  end

  describe "when no Cask is specified" do
    it "raises an exception" do
      lambda {
        Hbc::CLI::Uninstall.run
      }.must_raise Hbc::CaskUnspecifiedError
    end
  end

  describe "when no Cask is specified, but an invalid option" do
    it "raises an exception" do
      lambda {
        Hbc::CLI::Uninstall.run("--notavalidoption")
      }.must_raise Hbc::CaskUnspecifiedError
    end
  end
end
