require "test_helper"

describe Hbc::Artifact::App do
  it "must raise" do
    exception_raised = begin
                         Hbc.load("two-apps-incorrect")
                         false
                       rescue
                         true
                       end
    # TODO: later give the user a nice exception for this case and check for it here
    assert exception_raised
  end
end
