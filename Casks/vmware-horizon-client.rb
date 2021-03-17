cask "vmware-horizon-client" do
  version "2012-8.1.0-17353466,CART21FQ4"
  sha256 "d098250f2754fde0603d81085841e765ae072fec6385459955373b8e26587e0a"

  url "https://download3.vmware.com/software/view/viewclients/#{version.after_comma}/VMware-Horizon-Client-#{version.before_comma}.dmg"
  appcast "https://my.vmware.com/channel/public/api/v1.0/dlg/details?locale=en_US&downloadGroup=#{version.after_comma}_MAC_2012"
  name "VMware Horizon Client"
  desc "Virtual machine client"
  homepage "https://www.vmware.com/"

  depends_on macos: ">= :sierra"

  app "VMware Horizon Client.app"
end
