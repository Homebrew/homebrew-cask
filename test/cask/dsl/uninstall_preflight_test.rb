require "test_helper"

describe Hbc::DSL::UninstallPreflight do
  before do
    cask = Hbc.load('basic-cask')
    @dsl = Hbc::DSL::UninstallPreflight.new(cask, Hbc::FakeSystemCommand)
  end

  it_behaves_like Hbc::Staged do
    let(:staged) { @dsl }
  end
end
