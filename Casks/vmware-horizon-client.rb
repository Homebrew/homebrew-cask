cask "vmware-horizon-client" do
  version "2006-8.0.0-16531451,CART21FQ2"
  sha256 "ef63a658b2233a8490421e33ecfbafb2a05ef57f0d3810bb6912b92f117cf468"

  url "https://download3.vmware.com/software/view/viewclients/#{version.after_comma}/VMware-Horizon-Client-#{version.before_comma}.dmg"
  appcast "https://my.vmware.com/channel/public/api/v1.0/dlg/details?locale=en_US&downloadGroup=CART21FQ2_MAC_800&productId=1027&rPId=48989"
  name "VMware Horizon Client"
  desc "Virtual machine client"
  homepage "https://www.vmware.com/"

  depends_on macos: ">= :sierra"

  app "VMware Horizon Client.app"
end
