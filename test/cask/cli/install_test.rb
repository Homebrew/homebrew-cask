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

    TestHelper.must_output(self, lambda {
      Cask::CLI::Install.run('local-transmission')
    }, 'Error: Cask for local-transmission is already installed. Use `--force` to install anyways.')

    Cask.load('local-transmission').must_be :installed?
  end

  it "allows double install with --force" do
    shutup do
      Cask::CLI::Install.run('local-transmission')
    end

    TestHelper.must_output(self, lambda {
      Cask::CLI::Install.run('local-transmission', '--force')
    }, /Success! local-transmission installed/)
  end

  it "properly handles casks that are not present" do
    TestHelper.must_output(self, lambda {
      Cask::CLI::Install.run('what-the-balls')
    }, 'Error: No available cask for what-the-balls')
  end
end
