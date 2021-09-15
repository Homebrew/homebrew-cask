cask "vmware-horizon-client" do
  version "2106-8.3.0-18251973,CART22FQ2"
  sha256 "59820608c6e6515b1a4bece79f586dbee2eabbadf34c958a27e2635c031df5e5"

  url "https://download3.vmware.com/software/view/viewclients/#{version.after_comma}/VMware-Horizon-Client-#{version.before_comma}.dmg"
  appcast "https://my.vmware.com/channel/public/api/v1.0/dlg/details?locale=en_US&downloadGroup=#{version.after_comma}_MAC_2106"
  name "VMware Horizon Client"
  desc "Virtual machine client"
  homepage "https://www.vmware.com/"

  depends_on macos: ">= :sierra"

  app "VMware Horizon Client.app"
end
