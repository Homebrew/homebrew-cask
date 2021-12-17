cask "vpntracker" do
  version "21.7.3"
  sha256 :no_check

  url "https://www.vpntracker.com/goto/HPdownload/VPNT365Latest"
  name "VPN Tracker 365"
  desc "VPN client: IPsec, L2TP, OpenVPN, PPTP, SSTP, SonicWALL/AnyConnect/Fortinet SSL"
  homepage "https://vpntracker.com/"

  depends_on macos: ">= :el_capitan"

  app "VPN Tracker 365.app"
end
