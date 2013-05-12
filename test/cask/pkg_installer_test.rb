require 'test_helper'

describe Cask::PkgInstaller do
  before {
    @cask = Cask.load('with-installable')
    shutup do
      Cask::Installer.install(@cask)
    end
  }

  after {
    shutup do
      Cask::Installer.uninstall(@cask)
    end
  }

  describe 'install' do
    it 'runs the system installer on the specified pkgs' do
      pkg_installer = Cask::PkgInstaller.new(@cask, Cask::FakeSystemCommand)

      expected_command = "sudo installer -pkg '#{@cask.destination_path/'MyFancyPkg'/'Fancy.pkg'}' -target /"
      Cask::FakeSystemCommand.fake_response_for(expected_command)

      shutup do
        pkg_installer.install
      end

      Cask::FakeSystemCommand.system_calls[expected_command].must_equal 1
    end
  end
end
