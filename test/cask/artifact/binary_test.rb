require 'test_helper'

describe Cask::Artifact::App do
  let(:cask) {
    Cask.load('with-binary').tap do |cask|
      TestHelper.install_without_artifacts(cask)
    end
  }
  let(:expected_path) {
    Cask.binarydir/'binary'
  }

  it "links the binary to the proper directory" do
    shutup do
      Cask::Artifact::Binary.new(cask).install_phase
    end

    TestHelper.valid_alias?(expected_path).must_equal true
  end

  it "avoids clobbering an existing binary by linking over it" do
    FileUtils.touch expected_path

    shutup do
      Cask::Artifact::Binary.new(cask).install_phase
    end

    expected_path.wont_be :symlink?
  end

  it "clobbers an existing symlink" do
    expected_path.make_symlink('/tmp')

    shutup do
      Cask::Artifact::Binary.new(cask).install_phase
    end

    File.readlink(expected_path).wont_equal '/tmp'
  end

  it "respects --no-binaries flag" do
    Cask.no_binaries = true

    shutup do
      Cask::Artifact::Binary.new(cask).install_phase
    end

    expected_path.exist?.must_equal false

    Cask.no_binaries = false
  end
end
