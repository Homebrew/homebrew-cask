cask "vmware-horizon-client" do
  version "2103-8.2.0-17759009,CART22FQ1"
  sha256 "ee6b085e3632d0d1a9aae6a58ca6d02b299ed8bbb82062eb804ebe04b30ed519"

  url "https://download3.vmware.com/software/view/viewclients/#{version.after_comma}/VMware-Horizon-Client-#{version.before_comma}.dmg"
  appcast "https://my.vmware.com/channel/public/api/v1.0/dlg/details?locale=en_US&downloadGroup=#{version.after_comma}_MAC_2103"
  name "VMware Horizon Client"
  desc "Virtual machine client"
  homepage "https://www.vmware.com/"

  depends_on macos: ">= :sierra"

  app "VMware Horizon Client.app"
end
