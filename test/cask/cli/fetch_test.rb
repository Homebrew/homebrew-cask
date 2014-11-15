require 'test_helper'

describe Cask::CLI::Fetch do
  let(:local_transmission) do
    Cask.load('local-transmission')
  end

  let(:local_caffeine) do
    Cask.load('local-caffeine')
  end

  it "allows download the installer of a Cask" do
    shutup do
      Cask::CLI::Fetch.run('local-transmission', 'local-caffeine')
    end
    Cask::CurlDownloadStrategy.new(local_transmission).cached_location.must_be :exist?
    Cask::CurlDownloadStrategy.new(local_caffeine).cached_location.must_be :exist?
  end

  it "prevents double fetch (without nuking existing installation)" do
    download_stategy = Cask::CurlDownloadStrategy.new(local_transmission)

    shutup do
      Cask::Download.new(local_transmission).perform
    end
    old_ctime = File.stat(download_stategy.cached_location).ctime

    shutup do
      Cask::CLI::Fetch.run('local-transmission')
    end
    new_ctime = File.stat(download_stategy.cached_location).ctime

    old_ctime.to_i.must_equal new_ctime.to_i

  end

  it "allows double fetch with --force" do
    shutup do
      Cask::Download.new(local_transmission).perform
    end

    download_stategy = Cask::CurlDownloadStrategy.new(local_transmission)
    old_ctime = File.stat(download_stategy.cached_location).ctime
    sleep(1)

    shutup do
      Cask::CLI::Fetch.run('local-transmission','--force')
    end
    download_stategy = Cask::CurlDownloadStrategy.new(local_transmission)
    new_ctime = File.stat(download_stategy.cached_location).ctime

    # new_ctime.to_i.must_be :>, old_ctime.to_i
    new_ctime.to_i.must_be :>, old_ctime.to_i
  end

  it "properly handles Casks that are not present" do
    lambda {
      shutup do
        Cask::CLI::Fetch.run('notacask')
      end
    }.must_raise CaskUnavailableError
  end

  describe "when no Cask is specified" do
    it "raises an exception" do
      lambda {
        Cask::CLI::Fetch.run()
      }.must_raise CaskUnspecifiedError
    end
  end

  describe "when no Cask is specified, but an invalid option" do
    it "raises an exception" do
      lambda {
        Cask::CLI::Fetch.run('--notavalidoption')
      }.must_raise CaskUnspecifiedError
    end
  end
end
