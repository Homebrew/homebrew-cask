require 'test_helper'

describe Cask::Artifact::NestedContainer do
  describe 'install' do
    it 'extracts the specified paths as containers' do
      cask = Cask.load('nested-app').tap do |c|
        TestHelper.install_without_artifacts(c)
      end

      shutup do
        Cask::Artifact::NestedContainer.new(cask).install
      end

      cask.destination_path.join('MyNestedApp.app').must_be :directory?
    end
  end
end
