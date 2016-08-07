require "test_helper"

describe Hbc::DSL::UninstallPostflight do
  let(:cask) { Hbc.load("basic-cask") }
  let(:dsl) { Hbc::DSL::UninstallPostflight.new(cask, Hbc::FakeSystemCommand) }

  it_behaves_like Hbc::DSL::Base
end
