require 'test_helper'

describe Cask::CLI::Fetch do
  let(:local_transmission) do
    Cask.load('local-transmission')
  end

  let(:local_caffeine) do
    Cask.load('local-caffeine')
  end

  it "allows download the installer of a cask" do
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

  it "properly handles casks that are not present" do
    lambda {
      shutup do
        Cask::CLI::Fetch.run('notacask')
      end
    }.must_raise CaskUnavailableError
  end

  it "raises an exception when no cask is specified" do
    lambda {
      shutup do
        Cask::CLI::Fetch.run
      end
    }.must_raise CaskUnspecifiedError
  end
end
