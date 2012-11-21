require 'test_helper'

describe Cask::Scopes do
  describe 'installed' do
    it "returns a list of strings" do 
      caffeine = Cask.load('local-caffeine')

      shutup do
        Cask::Installer.install(caffeine)
      end

      installed_casks = Cask.installed
      installed_casks.count.must_be :>, 0
      installed_casks.each do |c|
        c.must_be_kind_of String
      end
    end
  end
end
