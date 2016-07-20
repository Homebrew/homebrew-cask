require "test_helper"

describe Hbc::DSL::UninstallPreflight do
  let(:cask) { Hbc.load("basic-cask") }
  let(:dsl) { Hbc::DSL::UninstallPreflight.new(cask, Hbc::FakeSystemCommand) }

  it_behaves_like Hbc::DSL::Base

  it_behaves_like Hbc::Staged do
    let(:staged) { dsl }
  end
end
