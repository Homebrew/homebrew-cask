require 'test_helper'

describe Hbc::Artifact::Artifact do
  let(:cask) {
    Hbc.load('with-generic-artifact').tap do |cask|
      TestHelper.install_without_artifacts(cask)
    end
  }
  let(:expected_path) {
    Hbc.appdir.join('Caffeine.app')
  }

  it "fails to install with no target" do
    no_target = Hbc.load('with-generic-artifact-no-target')
    TestHelper.install_without_artifacts(no_target)

    lambda {
      shutup do
        Hbc::Artifact::Artifact.new(no_target).install_phase
      end
    }.must_raise(Hbc::CaskInvalidError)
  end

  it "links the artifact to the proper directory" do
    shutup do
      Hbc::Artifact::Artifact.new(cask).install_phase
    end

    TestHelper.valid_alias?(expected_path).must_equal true
  end

  it "avoids clobbering an existing artifact by linking over it" do
    FileUtils.touch expected_path

    shutup do
      Hbc::Artifact::Artifact.new(cask).install_phase
    end

    expected_path.wont_be :symlink?
  end

  it "clobbers an existing symlink" do
    expected_path.make_symlink('/tmp')

    shutup do
      Hbc::Artifact::Artifact.new(cask).install_phase
    end

    File.readlink(expected_path).wont_equal '/tmp'
  end
end
