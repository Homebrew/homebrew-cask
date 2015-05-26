require 'test_helper'

describe Hbc::Artifact::App do
  it 'must raise' do
   begin
     Hbc.load('two-apps-incorrect')
   rescue => e
   end
    # todo: later give the user a nice exception for this case and check for it here
    e.must_be_kind_of Exception
  end
end
