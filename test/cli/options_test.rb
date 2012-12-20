require 'test_helper'

describe Cask::CLI do
  it "supports setting the appdir" do
    shutup do
      Cask::CLI.process %w{help --appdir=/some/path}
    end

    Cask.appdir.must_equal Pathname.new File.expand_path "/some/path"
  end

  it "supports setting the appdir from ENV" do
    ENV['HOMEBREW_CASK_OPTS'] = "--appdir=/some/path"

    shutup do
      Cask::CLI.process %w{help}
    end

    Cask.appdir.must_equal Pathname.new File.expand_path "/some/path"
  end

  after do
    ENV['HOMEBREW_CASK_OPTS'] = nil
    Cask.appdir = CANNED_APPDIR
  end
end
