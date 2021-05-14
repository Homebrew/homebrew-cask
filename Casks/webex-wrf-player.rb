cask "webex-wrf-player" do
  version "T33L"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://welcome.webex.com/client/#{version}/mac/intel/webexplayer_intel.dmg"
  name "WebEx Player"
  homepage "https://www.webex.com/play-webex-recording.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/(T\d+L)/mac/intel/webexplayer_intel\.dmg}i)
  end

  pkg "WebEx Player.pkg"

  uninstall pkgutil: "playback.mac.webex.com"
end
