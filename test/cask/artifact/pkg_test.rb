require "test_helper"

describe Hbc::Artifact::Pkg do
  before do
    @cask = Hbc.load("with-installable")
    shutup do
      TestHelper.install_without_artifacts(@cask)
    end
  end

  describe "install_phase" do
    it "runs the system installer on the specified pkgs" do
      pkg = Hbc::Artifact::Pkg.new(@cask,
                                   command: Hbc::FakeSystemCommand)

      Hbc::FakeSystemCommand.expects_command(["/usr/bin/sudo", "-E", "--", "/usr/sbin/installer", "-pkg", @cask.staged_path.join("MyFancyPkg", "Fancy.pkg"), "-target", "/"])

      shutup do
        pkg.install_phase
      end
    end
  end

  describe "uninstall_phase" do
    it "does nothing, because the uninstall_phase method is a no-op" do
      pkg = Hbc::Artifact::Pkg.new(@cask,
                                   command: Hbc::FakeSystemCommand)
      shutup do
        pkg.uninstall_phase
      end
    end
  end
end
