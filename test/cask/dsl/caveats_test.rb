require "test_helper"

describe Hbc::DSL::Caveats do
  let(:cask) { Hbc.load("basic-cask") }
  let(:dsl) { Hbc::DSL::Caveats.new(cask) }

  it_behaves_like Hbc::DSL::Base

  # TODO: add tests for Caveats DSL methods
end
