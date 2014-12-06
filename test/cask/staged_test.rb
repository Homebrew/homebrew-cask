require 'test_helper'

# todo: this test should be named after the corresponding class, once
# that class is abstracted from installer.rb.  It makes little sense
# to be invoking bundle_identifier off of the postflight instance.
describe "Operations on staged Casks" do
  describe "bundle ID DSL" do
    it "fetches the bundle ID from a staged cask" do
      transmission_cask  = Cask.load('local-transmission')
      tr_installer  = Cask::Installer.new(transmission_cask)
      tr_postflight = Cask::DSL::Postflight.new(transmission_cask)

      shutup do
        tr_installer.install
      end
      tr_postflight.bundle_identifier.must_equal('org.m0k.transmission')
    end
  end
end
