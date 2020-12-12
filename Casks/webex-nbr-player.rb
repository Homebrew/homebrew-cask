cask "webex-nbr-player" do
  version "T33L"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://welcome.webex.com/client/#{version}/mac/intel/webexnbrplayer_intel.dmg"
  name "Webex Network Recording player"
  homepage "https://www.webex.com/play-webex-recording.html"

  pkg "Network Recording Player.pkg"

  uninstall pkgutil: "nbr.mac.webex.com"
end
