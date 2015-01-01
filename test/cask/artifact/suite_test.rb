require 'test_helper'

describe Hbc::Artifact::Suite do
  let(:cask) {
    Hbc.load('with-suite').tap do |cask|
      TestHelper.install_without_artifacts(cask)
    end
  }
  let(:expected_path) {
    Hbc.appdir.join('caffeine_suite')
  }

  it "links the suite to the proper directory" do
    shutup do
      Hbc::Artifact::Suite.new(cask).install_phase
    end

    TestHelper.valid_alias?(expected_path).must_equal true
  end

  it "creates a suite containing the expected app" do
    shutup do
      Hbc::Artifact::Suite.new(cask).install_phase
    end

    expected_path.join('Caffeine.app').must_be :exist?
  end

  it "avoids clobbering an existing suite by linking over it" do
    FileUtils.touch expected_path

    shutup do
      Hbc::Artifact::Suite.new(cask).install_phase
    end

    expected_path.wont_be :symlink?
  end

  it "clobbers an existing symlink" do
    expected_path.make_symlink('/tmp')

    shutup do
      Hbc::Artifact::Suite.new(cask).install_phase
    end

    File.readlink(expected_path).wont_equal '/tmp'
  end
end
