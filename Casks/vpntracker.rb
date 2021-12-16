cask "vpntracker" do
  version "21.7.3"
  sha256 :no_check

  url "https://www.vpntracker.com/goto/HPdownload/VPNT365Latest"
  name "VPN Tracker 365"
  desc "The ultimate VPN client for macOS with IPsec, L2TP, OpenVPN, PPTP, SonicWALL SSL, AnyConnect SSL, Fortinet SSL and SSTP protocol support."
  homepage "https://vpntracker.com/"

  depends_on macos: ">= :el_capitan"

  app "VPN Tracker 365.app"

end
