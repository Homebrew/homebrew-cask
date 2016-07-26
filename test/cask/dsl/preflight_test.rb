require "test_helper"

describe Hbc::DSL::Preflight do
  let(:cask) { Hbc.load("basic-cask") }
  let(:dsl) { Hbc::DSL::Preflight.new(cask, Hbc::FakeSystemCommand) }

  it_behaves_like Hbc::DSL::Base

  it_behaves_like Hbc::Staged do
    let(:staged) { dsl }
  end
end
