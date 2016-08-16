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

  describe "when multiple versions of a cask are installed" do
    let(:token) { "versioned-cask" }
    let(:first_installed_version) { "1.2.3" }
    let(:last_installed_version) { "4.5.6" }
    let(:timestamped_versions) {
      [
        [first_installed_version, "123000"],
        [last_installed_version,  "456000"],
      ]
    }
    let(:caskroom_path) { Hbc.caskroom.join(token).tap(&:mkpath) }

    before(:each) do
      timestamped_versions.each do |timestamped_version|
        caskroom_path.join(".metadata", *timestamped_version, "Casks").tap(&:mkpath)
                     .join("#{token}.rb").open("w") do |caskfile|
                       caskfile.puts <<-EOF.undent
                         cask '#{token}' do
                           version '#{timestamped_version[0]}'
                         end
                       EOF
                     end
        caskroom_path.join(timestamped_version[0]).mkpath
      end
    end

    after(:each) do
      caskroom_path.rmtree if caskroom_path.exist?
    end

    it "uninstalls one version at a time" do
      shutup do
        Hbc::CLI::Uninstall.run("versioned-cask")
      end

      caskroom_path.join(first_installed_version).must_be :exist?
      caskroom_path.join(last_installed_version).wont_be :exist?
      caskroom_path.must_be :exist?

      shutup do
        Hbc::CLI::Uninstall.run("versioned-cask")
      end

      caskroom_path.join(first_installed_version).wont_be :exist?
      caskroom_path.wont_be :exist?
    end

    it "displays a message when versions remain installed" do
      out, err = capture_io do
        Hbc::CLI::Uninstall.run("versioned-cask")
      end

      out.must_match(%r{#{token} #{first_installed_version} is still installed.})
      err.must_be :empty?
    end
  end

  describe "when Casks in Taps have been renamed or removed" do
    let(:app) { Hbc.appdir.join("ive-been-renamed.app") }
    let(:caskroom_path) { Hbc.caskroom.join("ive-been-renamed").tap(&:mkpath) }
    let(:saved_caskfile) { caskroom_path.join(".metadata", "latest", "timestamp", "Casks").join("ive-been-renamed.rb") }

    before do
      app.tap(&:mkpath)
         .join("Contents").tap(&:mkpath)
         .join("Info.plist").tap(&FileUtils.method(:touch))

      caskroom_path.mkpath

      saved_caskfile.dirname.mkpath

      IO.write saved_caskfile, <<-EOF.undent
        cask 'ive-been-renamed' do
          version :latest

          app 'ive-been-renamed.app'
        end
      EOF
    end

    after do
      app.rmtree if app.exist?
      caskroom_path.rmtree if caskroom_path.exist?
    end

    it "can still uninstall those Casks" do
      shutup do
        Hbc::CLI::Uninstall.run("ive-been-renamed")
      end

      app.wont_be :exist?
      caskroom_path.wont_be :exist?
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
