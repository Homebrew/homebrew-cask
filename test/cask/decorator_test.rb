require 'test_helper'

describe Cask::Decorator do
  it "forwards methods to cask" do
    cask = Cask.load('basic-cask')
    decorator = Cask::Decorator.new(Cask::DSL::BeforeInstall, cask)
    decorator.title.must_equal 'basic-cask'
  end
end
