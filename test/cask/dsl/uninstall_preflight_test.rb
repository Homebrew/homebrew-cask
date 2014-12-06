require "test_helper"

describe Cask::DSL::UninstallPreflight do
  before do
    cask = Cask.load('basic-cask')
    @dsl = Cask::DSL::UninstallPreflight.new(cask, Cask::FakeSystemCommand)
  end
end
