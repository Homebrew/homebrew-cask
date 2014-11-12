require 'test_helper'

describe Cask::CLI::Install do
  it "allows staging and activation of multiple Casks at once" do
    shutup do
      Cask::CLI::Install.run('local-transmission', 'local-caffeine')
    end

    Cask.load('local-transmission').must_be :installed?
    Cask.appdir.join('Transmission.app').must_be :symlink?
    Cask.load('local-caffeine').must_be :installed?
    Cask.appdir.join('Caffeine.app').must_be :symlink?
  end

  it "skips double install (without nuking existing installation)" do
    shutup do
      Cask::CLI::Install.run('local-transmission')
    end
    shutup do
      Cask::CLI::Install.run('local-transmission')
    end
    Cask.load('local-transmission').must_be :installed?
  end

  it "prints a warning message on double install" do
    shutup do
      Cask::CLI::Install.run('local-transmission')
    end

    TestHelper.must_output(self, lambda {
      Cask::CLI::Install.run('local-transmission', '')
    }, %r{Warning: A Cask for local-transmission is already installed. Add the "--force" option to force re-install.})
  end

  it "allows double install with --force" do
    shutup do
      Cask::CLI::Install.run('local-transmission')
    end

    TestHelper.must_output(self, lambda {
      Cask::CLI::Install.run('local-transmission', '--force')
    }, %r{==> Success! local-transmission staged at '#{Cask.caskroom}/local-transmission/2.61' \(487 files, 11M\)})
  end

  it "properly handles Casks that are not present" do
    lambda {
      shutup do
        Cask::CLI::Install.run('notacask')
      end
    }.must_raise CaskError
  end

  it "returns a suggestion for a misspelled Cask" do
    out, err = capture_io do
      begin
        Cask::CLI::Install.run('googlechrome')
      rescue CaskError; end
    end
    err.must_match %r{No available Cask for googlechrome\. Did you mean:\ngoogle-chrome}
  end

  it "returns multiple suggestions for a Cask fragment" do
    out, err = capture_io do
      begin
      Cask::CLI::Install.run('google')
      rescue CaskError; end
    end
    err.must_match %r{No available Cask for google\. Did you mean one of:\ngoogle}
  end

  describe "when no Cask is specified" do
    with_options = lambda do |options|
      it "raises an exception" do
        lambda {
          Cask::CLI::Install.run(*options)
        }.must_raise CaskUnspecifiedError
      end
    end

    describe "without options" do
      with_options.call([])
    end

    describe "with --force" do
      with_options.call(['--force'])
    end

    describe "with an invalid option" do
      with_options.call(['--notavalidoption'])
    end
  end
end
