require 'test_helper'

# todo: this test should be named after the corresponding class, once
# that class is abstracted from installer.rb
describe "Satisfy Dependencies and Requirements" do

  # todo: test that depends_on :formula invokes Homebrew
  #
  # describe "depends_on :formula" do
  #   it "" do
  #   end
  # end
  #

  describe "depends_on :macos" do
    it "understands depends_on :macos => <array>" do
      macos_cask = Cask.load('with-depends-on-macos-array')
      shutup do
        Cask::Installer.new(macos_cask).install
      end
    end

    it "understands depends_on :macos => <comparison>" do
      macos_cask = Cask.load('with-depends-on-macos-comparison')
      shutup do
        Cask::Installer.new(macos_cask).install
      end
    end

    it "understands depends_on :macos => <string>" do
      macos_cask = Cask.load('with-depends-on-macos-string')
      shutup do
        Cask::Installer.new(macos_cask).install
      end
    end

    it "understands depends_on :macos => <symbol>" do
      macos_cask = Cask.load('with-depends-on-macos-symbol')
      shutup do
        Cask::Installer.new(macos_cask).install
      end
    end

    it "raises an exception when depends_on :macos is not satisfied" do
      macos_cask = Cask.load('with-depends-on-macos-failure')
      lambda {
        shutup do
          Cask::Installer.new(macos_cask).install
        end
      }.must_raise(CaskError)
    end
  end

  describe "depends_on :arch" do
    it "succeeds when depends_on :arch is satisfied" do
      arch_cask = Cask.load('with-depends-on-arch')
      shutup do
        Cask::Installer.new(arch_cask).install
      end
    end

    it "raises an exception when depends_on :arch is not satisfied" do
      arch_cask = Cask.load('with-depends-on-arch-failure')
      lambda {
        shutup do
          Cask::Installer.new(arch_cask).install
        end
      }.must_raise(CaskError)
    end
  end

  describe "depends_on :x11" do
    it "succeeds when depends_on :x11 is satisfied" do
      x11_cask = Cask.load('with-depends-on-x11')
      shutup do
        Cask::Installer.new(x11_cask).install
      end
    end

    it "raises an exception when depends_on :x11 is not satisfied" do
      x11_cask = Cask.load('with-depends-on-x11')
      Cask.stubs(:x11_executable).returns(Pathname.new('/usr/path/does/not/exist'))
      lambda {
        shutup do
          Cask::Installer.new(x11_cask).install
        end
      }.must_raise(CaskX11DependencyError)
    end

    it "never raises when depends_on :x11 => false" do
      x11_cask = Cask.load('with-depends-on-x11-false')
      Cask.stubs(:x11_executable).returns(Pathname.new('/usr/path/does/not/exist'))
      lambda {
        shutup do
          Cask::Installer.new(x11_cask).install
        end
      } # won't raise
    end
  end
end
