cask "vmware-horizon-client" do
  version "2106.1-8.3.1-18641314,CART22FQ2"
  sha256 "9a53ae726faf61353d45ad21573518d51d3c81fc20d0cc9dca952be1bae0a166"

  url "https://download3.vmware.com/software/view/viewclients/#{version.after_comma}/VMware-Horizon-Client-#{version.before_comma}.dmg"
  appcast "https://my.vmware.com/channel/public/api/v1.0/dlg/details?locale=en_US&downloadGroup=#{version.after_comma}_MAC_2106"
  name "VMware Horizon Client"
  desc "Virtual machine client"
  homepage "https://www.vmware.com/"

  depends_on macos: ">= :sierra"

  app "VMware Horizon Client.app"
end
