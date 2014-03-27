require 'test_helper'

describe Cask::CLI::Install do
  it "allows install and link of multiple casks at once" do
    shutup do
      Cask::CLI::Install.run('local-transmission', 'local-caffeine')
    end

    Cask.load('local-transmission').must_be :installed?
    Cask.appdir.join('Transmission.app').must_be :symlink?
    Cask.load('local-caffeine').must_be :installed?
    Cask.appdir.join('Caffeine.app').must_be :symlink?
  end

  it "prevents double install (without nuking existing installation)" do
    shutup do
      Cask::CLI::Install.run('local-transmission')
    end

    e = lambda {
      Cask::CLI::Install.run('local-transmission')
    }.must_raise CaskAlreadyInstalledError

    e.message.must_equal 'Cask for local-transmission is already installed. Use `--force` to install anyways.'

    Cask.load('local-transmission').must_be :installed?
  end

  it "allows double install with --force" do
    shutup do
      Cask::CLI::Install.run('local-transmission')
    end

    TestHelper.must_output(self, lambda {
      Cask::CLI::Install.run('local-transmission', '--force')
    }, %r{==> Success! local-transmission installed to '#{Cask.caskroom}/local-transmission/2.61' \(487 files, 11M\)})
  end

  it "properly handles casks that are not present" do
    lambda {
      Cask::CLI::Install.run('notacask')
    }.must_raise CaskUnavailableError
  end

  it "returns a suggestion for a misspelled Cask" do
    e = lambda {
      Cask::CLI::Install.run('googlechrome')
    }.must_raise CaskUnavailableError
    e.message.must_equal "No available cask for googlechrome\. Did you mean:\ngoogle-chrome"
  end

  it "returns multiple suggestions for a Cask fragment" do
    e = lambda {
      Cask::CLI::Install.run('google')
    }.must_raise CaskUnavailableError
    e.message.must_match %r{^No available cask for google\. Did you mean one of:\ngoogle}
  end

  it "raises an exception when no cask is specified" do
    lambda {
      Cask::CLI::Install.run
    }.must_raise CaskUnspecifiedError
  end
end
