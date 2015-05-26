require "test_helper"

describe Hbc::DSL::UninstallPreflight do
  before do
    cask = Hbc.load('basic-cask')
    @dsl = Hbc::DSL::UninstallPreflight.new(cask, Hbc::FakeSystemCommand)
  end
end
