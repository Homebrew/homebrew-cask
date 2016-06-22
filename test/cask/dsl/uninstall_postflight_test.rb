require "test_helper"

describe Hbc::DSL::UninstallPostflight do
  let(:cask) { Hbc.load('basic-cask') }
  let(:dsl) { Hbc::DSL::UninstallPostflight.new(cask, Hbc::FakeSystemCommand) }

  it "supports the appdir method" do
    result = dsl.instance_eval { appdir }

    result.must_equal Hbc.appdir
  end
end
