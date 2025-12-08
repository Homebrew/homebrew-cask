cask "vnc-viewer" do
  version "7.15.1"
  sha256 "9d64bb5ec01015ca76ba85d7cd3f9ae78d90f6fc25a191101ea7f87a278aa940"

  url "https://downloads.realvnc.com/download/file/viewer.files/VNC-Viewer-#{version}-MacOSX-universal.dmg"
  name "Real VNC Viewer"
  desc "Remote desktop application focusing on security"
  homepage "https://www.realvnc.com/"

  # The upstream download page links to the latest dmg file but Cloudflare
  # protections prevent us from fetching it, so it must be checked manually:
  # https://www.realvnc.com/en/connect/download/viewer/macos/
  livecheck do
    skip "Cannot be fetched due to Cloudflare protections"
  end

  depends_on macos: ">= :big_sur"

  app "VNC Viewer.app"

  zap trash: [
    "~/Library/Preferences/com.realvnc.vncviewer.plist",
    "~/Library/Saved Application State/com.realvnc.vncviewer.savedState",
  ]
end
