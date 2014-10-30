require 'test_helper'

describe Cask::Artifact::Pkg do
  before {
    @cask = Cask.load('with-installable')
    shutup do
      TestHelper.install_without_artifacts(@cask)
    end
  }

  describe 'install_phase' do
    it 'runs the system installer on the specified pkgs' do
      pkg = Cask::Artifact::Pkg.new(@cask, Cask::FakeSystemCommand)

      Cask::FakeSystemCommand.expects_command(['/usr/bin/sudo', '-E', '--', '/usr/sbin/installer', '-pkg', @cask.staged_path/'MyFancyPkg'/'Fancy.pkg', '-target', '/'])

      shutup do
        pkg.install_phase
      end
    end
  end

  describe 'uninstall_phase' do
    it 'does nothing, because the uninstall_phase method is a no-op' do
      pkg = Cask::Artifact::Pkg.new(@cask, Cask::FakeSystemCommand)
      shutup do
        pkg.uninstall_phase
      end
    end
  end
end
