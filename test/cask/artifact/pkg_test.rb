require 'test_helper'

describe Cask::Artifact::Pkg do
  before {
    @cask = Cask.load('with-installable')
    shutup do
      TestHelper.install_without_artifacts(@cask)
    end
  }

  describe 'install' do
    it 'runs the system installer on the specified pkgs' do
      pkg = Cask::Artifact::Pkg.new(@cask, Cask::FakeSystemCommand)

      Cask::FakeSystemCommand.expects_command(['/usr/bin/sudo', '-E', '--', '/usr/sbin/installer', '-pkg', @cask.destination_path/'MyFancyPkg'/'Fancy.pkg', '-target', '/'])

      shutup do
        pkg.install
      end
    end
  end

  describe 'uninstall' do
    it 'does nothing, because the uninstall method is a no-op' do
      pkg = Cask::Artifact::Pkg.new(@cask, Cask::FakeSystemCommand)
      shutup do
        pkg.uninstall
      end
    end
  end
end
