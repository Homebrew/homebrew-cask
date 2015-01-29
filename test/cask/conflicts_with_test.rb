require 'test_helper'

# todo: this test should be named after the corresponding class, once
# that class is abstracted from installer.rb
describe "Satisfy Conflicts" do

  # todo: test that conflicts_with :formula invokes Homebrew
  #
  # describe "conflicts_with :formula" do
  #   it "" do
  #   end
  # end
  #

  describe "conflicts_with :cask" do
    it "understands conflicts_with :cask => <string>" do
      conf_cask = Hbc.load('with-conflicts-with-cask')
      shutup do
        Hbc::Installer.new(conf_cask).install
      end
    end

    it "understands conflicts_with :cask => <array>" do
      conf_cask = Hbc.load('with-conflicts-with-cask-array')
      shutup do
        Hbc::Installer.new(conf_cask).install
      end
    end

    it "understands multiple conflicts_with :cask stanzas" do
      conf_cask = Hbc.load('with-conflicts-with-cask-multiple')
      shutup do
        Hbc::Installer.new(conf_cask).install
      end
    end

    it "raises an exception when conflicts_with :cask is not satisfied" do
      csk = Hbc.load('with-conflicts-with-cask')
      conflict = Hbc.load(csk.conflicts_with.cask.args.first)
      shutup do
        Hbc::Installer.new(conflict).install
      end
      lambda {
        shutup do
          Hbc::Installer.new(csk).install
        end
      }.must_raise(Hbc::CaskError)
    end
  end

  describe "conflicts_with :macos" do
    it "understands conflicts_with :macos => <array>" do
      macos_cask = Hbc.load('with-conflicts-with-macos-array')
      shutup do
        Hbc::Installer.new(macos_cask).install
      end
    end

    it "understands conflicts_with :macos => <comparison>" do
      macos_cask = Hbc.load('with-conflicts-with-macos-comparison')
      shutup do
        Hbc::Installer.new(macos_cask).install
      end
    end

    it "understands conflicts_with :macos => <string>" do
      macos_cask = Hbc.load('with-conflicts-with-macos-string')
      shutup do
        Hbc::Installer.new(macos_cask).install
      end
    end

    it "understands conflicts_with :macos => <symbol>" do
      macos_cask = Hbc.load('with-conflicts-with-macos-symbol')
      shutup do
        Hbc::Installer.new(macos_cask).install
      end
    end

    it "raises an exception when conflicts_with :macos is not satisfied" do
      macos_cask = Hbc.load('with-conflicts-with-macos-failure')
      lambda {
        shutup do
          Hbc::Installer.new(macos_cask).install
        end
      }.must_raise(Hbc::CaskError)
    end
  end

  describe "conflicts_with :arch" do
    it "succeeds when conflicts_with :arch is satisfied" do
      arch_cask = Hbc.load('with-conflicts-with-arch')
      shutup do
        Hbc::Installer.new(arch_cask).install
      end
    end

    it "raises an exception when conflicts_with :arch is not satisfied" do
      arch_cask = Hbc.load('with-conflicts-with-arch-failure')
      lambda {
        shutup do
          Hbc::Installer.new(arch_cask).install
        end
      }.must_raise(Hbc::CaskError)
    end
  end

  describe "conflicts_with :x11" do
    it "succeeds when conflicts_with :x11 is satisfied" do
      x11_cask = Hbc.load('with-conflicts-with-x11')
      Hbc.stubs(:x11_libpng).returns([Pathname.new('/usr/path/does/not/exist')])
      shutup do
        Hbc::Installer.new(x11_cask).install
      end
    end

    it "raises an exception when conflicts_with :x11 is not satisfied" do
      x11_cask = Hbc.load('with-conflicts-with-x11')
      lambda {
        shutup do
          Hbc::Installer.new(x11_cask).install
        end
      }.must_raise(Hbc::CaskError)
    end

    it "never raises when conflicts_with :x11 => false" do
      x11_cask = Hbc.load('with-conflicts-with-x11-false')
      Hbc.stubs(:x11_executable).returns(Pathname.new('/usr/path/does/not/exist'))
      lambda {
        shutup do
          Hbc::Installer.new(x11_cask).install
        end
      } # won't raise
    end
  end
end
