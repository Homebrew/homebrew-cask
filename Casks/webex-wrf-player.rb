cask "webex-wrf-player" do
  version "T33L"
  sha256 :no_check

  url "https://welcome.webex.com/client/#{version}/mac/intel/webexplayer_intel.dmg"
  name "WebEx Player"
  homepage "https://www.webex.com/play-webex-recording.html"

  pkg "WebEx Player.pkg"

  uninstall pkgutil: "playback.mac.webex.com"
end
