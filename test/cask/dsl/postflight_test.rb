require "test_helper"

describe Hbc::DSL::Postflight do
  before do
    cask = Hbc.load('basic-cask')
    @dsl = Hbc::DSL::Postflight.new(cask, Hbc::FakeSystemCommand)
  end

  it_behaves_like Hbc::Staged do
    let(:staged) { @dsl }
  end

  it "can suppress move to applications folder alert " do
    @dsl.stubs(:bundle_identifier => 'com.example.BasicCask')

    Hbc::FakeSystemCommand.expects_command(
      ['/usr/bin/defaults', 'write', 'com.example.BasicCask', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true']
    )
    @dsl.suppress_move_to_applications
  end

  it "can suppress move to applications folder alert with a different key" do
    @dsl.stubs(:bundle_identifier => 'com.example.BasicCask')

    Hbc::FakeSystemCommand.expects_command(
      ['/usr/bin/defaults', 'write', 'com.example.BasicCask', 'suppressMoveToApplications', '-bool', 'true']
    )
    @dsl.suppress_move_to_applications :key => 'suppressMoveToApplications'
  end
end
