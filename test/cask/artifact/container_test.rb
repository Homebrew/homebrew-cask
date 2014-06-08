require 'test_helper'

describe Cask::Artifact::Container do
  describe 'install' do
    before {
      @cask = Cask.load('nested-app-with-container')

      shutup do
        Cask::Installer.new(@cask).install
      end
    }

    it 'extracts the specified paths as containers' do
      @cask.destination_path.join('MyNestedApp.app').must_be :directory?
    end
    it "links the noted applications to the proper directory" do
      TestHelper.valid_alias?(Cask.appdir/'MyNestedApp.app').must_equal true
    end
  end
end
