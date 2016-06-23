require "test_helper"

describe Hbc::DSL::Preflight do
  let(:cask) { Hbc.load('basic-cask') }
  let(:dsl) { Hbc::DSL::Preflight.new(cask, Hbc::FakeSystemCommand) }

  it_behaves_like Hbc::Staged do
    let(:staged) { dsl }
  end

  it "supports the appdir method" do
    result = dsl.instance_eval { appdir }

    result.must_equal Hbc.appdir
  end
end
