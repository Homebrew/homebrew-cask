require 'test_helper'

describe Hbc::Artifact::App do
  let(:local_caffeine) {
    Hbc.load('local-caffeine').tap do |cask|
      TestHelper.install_without_artifacts(cask)
    end
  }

  describe 'install_phase' do
    it "activates the given apps using the proper target directory" do
      cask = local_caffeine

      shutup do
        Hbc::Artifact::App.new(cask).install_phase
      end

      File.ftype(Hbc.appdir.join('Caffeine.app')).must_equal 'directory'
      File.exist?(cask.staged_path.join('Caffeine.app')).must_equal false
    end

    it "works with an application in a subdir" do
      subdir_cask = Hbc::Cask.new('subdir') do
        url TestHelper.local_binary_url('caffeine.zip')
        homepage 'http://example.com/local-caffeine'
        version '1.2.3'
        sha256 '9203c30951f9aab41ac294bbeb1dcef7bed401ff0b353dcb34d68af32ea51853'
        app 'subdir/Caffeine.app'
      end

      begin
        TestHelper.install_without_artifacts(subdir_cask)

        appsubdir = subdir_cask.staged_path.join('subdir').tap(&:mkpath)
        FileUtils.mv(subdir_cask.staged_path.join('Caffeine.app'), appsubdir)

        shutup do
          Hbc::Artifact::App.new(subdir_cask).install_phase
        end

        File.ftype(Hbc.appdir.join('Caffeine.app')).must_equal 'directory'
        File.exist?(appsubdir.join('Caffeine.app')).must_equal false
      ensure
        if defined?(subdir_cask)
          shutup do
            Hbc::Installer.new(subdir_cask).uninstall
          end
        end
      end
    end

    it "only uses apps when they are specified" do
      cask = local_caffeine

      staged_app_path = cask.staged_path.join('Caffeine.app')
      staged_app_copy = staged_app_path.sub('Caffeine.app', 'CaffeineAgain.app')
      FileUtils.cp_r staged_app_path, staged_app_copy

      shutup do
        Hbc::Artifact::App.new(cask).install_phase
      end

      File.ftype(Hbc.appdir.join('Caffeine.app')).must_equal 'directory'
      File.exist?(staged_app_path).must_equal false

      File.exist?(Hbc.appdir.join('CaffeineAgain.app')).must_equal false
      File.exist?(cask.staged_path.join('CaffeineAgain.app')).must_equal true
    end

    describe "when the target already exists" do
      let(:target_path) {
        target_path = Hbc.appdir.join('Caffeine.app')
        target_path.mkpath
        target_path
      }

      it "avoids clobbering an existing app" do
        cask = local_caffeine

        TestHelper.must_output(self, lambda {
          Hbc::Artifact::App.new(cask).install_phase
        }, "==> It seems there is already an App at '#{target_path}'; not moving.")

        source_path = cask.staged_path.join('Caffeine.app')

        File.identical?(source_path, target_path).must_equal false

        contents_path = target_path.join('Contents/Info.plist')
        File.exist?(contents_path).must_equal false
      end

      describe "given the force option" do
        let(:install_phase) {
          lambda { |given_options = {}|
            options = { force: true }.merge(given_options)
            Hbc::Artifact::App.new(local_caffeine, options).install_phase
          }
        }

        let(:chmod_cmd) {
          ['/bin/chmod', '-R', '--', 'u+rwx', target_path]
        }

        let(:chmod_n_cmd) {
          ['/bin/chmod', '-R', '-N', target_path]
        }

        let(:chflags_cmd) {
          ['/usr/bin/chflags', '-R', '--', '000', target_path]
        }

        before do
          Hbc::Utils.stubs(current_user: 'fake_user')
        end

        describe "target is both writable and user-owned" do
          it "overwrites the existing app" do
            cask = local_caffeine

            expected = [
              "==> It seems there is already an App at '#{target_path}'; overwriting.",
              "==> Removing App: '#{target_path}'",
              "==> Moving App 'Caffeine.app' to '#{target_path}'"
            ]
            TestHelper.must_output(self, install_phase,
              expected.join("\n"))

            source_path = cask.staged_path.join('Caffeine.app')

            File.exist?(source_path).must_equal false
            File.ftype(target_path).must_equal 'directory'

            contents_path = target_path.join('Contents/Info.plist')
            File.exist?(contents_path).must_equal true
          end
        end

        describe "target is user-owned but contains read-only files" do
          before do
            system '/usr/bin/touch', '--', "#{ target_path }/foo"
            system '/bin/chmod', '--', '0555', target_path
          end

          it "tries to make the target world-writable" do
            Hbc::FakeSystemCommand.expect_and_pass_through(chflags_cmd)
            Hbc::FakeSystemCommand.expect_and_pass_through(chmod_cmd)
            Hbc::FakeSystemCommand.expect_and_pass_through(chmod_n_cmd)
            shutup do
              install_phase.call(command: Hbc::FakeSystemCommand)
            end
          end

          it "overwrites the existing app" do
            cask = local_caffeine

            expected = [
              "==> It seems there is already an App at '#{target_path}'; overwriting.",
              "==> Removing App: '#{target_path}'",
              "==> Moving App 'Caffeine.app' to '#{target_path}'"
            ]
            TestHelper.must_output(self, install_phase,
              expected.join("\n"))

            source_path = cask.staged_path.join('Caffeine.app')

            File.exist?(source_path).must_equal false
            File.ftype(target_path).must_equal 'directory'

            contents_path = target_path.join('Contents/Info.plist')
            File.exist?(contents_path).must_equal true
          end

          after do
            system '/bin/chmod', '--', '0755', target_path
          end
        end
      end
    end

    it "gives a warning if the source doesn't exist" do
      cask = local_caffeine
      staged_app_path = cask.staged_path.join('Caffeine.app')
      staged_app_path.rmtree

      installation = -> { Hbc::Artifact::App.new(cask).install_phase }
      message = "It seems the App source is not there: '#{staged_app_path}'"

      error = installation.must_raise(Hbc::CaskError)
      error.message.must_equal message
    end
  end

  describe "uninstall_phase" do
    it "deletes managed apps" do
      cask = local_caffeine

      shutup do
        Hbc::Artifact::App.new(cask).install_phase
        Hbc::Artifact::App.new(cask).uninstall_phase
      end

      app_path = Hbc.appdir.join('Caffeine.app')
      File.exist?(app_path).must_equal false
    end
  end

  describe "summary" do
    it "returns the correct english_description" do
      cask = local_caffeine

      description = Hbc::Artifact::App.new(cask).summary[:english_description]

      description.must_equal 'Apps managed by brew-cask:'
    end

    describe "app is correctly installed" do
      it "returns the path to the app" do
        cask = local_caffeine
        shutup { Hbc::Artifact::App.new(cask).install_phase }

        contents = Hbc::Artifact::App.new(cask).summary[:contents]
        app_path = Hbc.appdir.join('Caffeine.app')

        contents.must_equal ["'#{app_path}'"]
      end
    end

    describe "app is missing" do
      it "returns a warning and the supposed path to the app" do
        cask = local_caffeine

        contents = Hbc::Artifact::App.new(cask).summary[:contents]
        app_path = Hbc.appdir.join('Caffeine.app')

        contents.size.must_equal 1
        contents[0].must_match(/.*Missing App.*: '#{app_path}'/)
      end
    end
  end
end
