require 'test_helper'

describe Cask::Scopes do
  describe 'installed' do
    it "returns a list of strings" do
      caffeine = Cask.load('local-caffeine')

      shutup do
        Cask::Installer.new(caffeine).install
      end

      Cask.installed.map(&:to_s).must_equal [caffeine].map(&:to_s)
    end
  end
end
