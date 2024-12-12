cask "vnc-viewer" do
  version "7.13.1"
  sha256 "59177c10479e7d773a2df82d58a4f73b056d1c354b85b11b1040218b3c10419c"

  url "https://downloads.realvnc.com/download/file/viewer.files/VNC-Viewer-#{version}-MacOSX-universal.dmg"
  name "Real VNC Viewer"
  desc "Remote desktop application focusing on security"
  homepage "https://www.realvnc.com/"

  livecheck do
    url "https://www.realvnc.com/en/connect/download/viewer/macos/"
    regex(%r{href=.*?/VNC-Viewer-(\d+(?:\.\d+)+)-MacOSX-universal\.dmg}i)
  end

  app "VNC Viewer.app"

  zap trash: [
    "~/Library/Preferences/com.realvnc.vncviewer.plist",
    "~/Library/Saved Application State/com.realvnc.vncviewer.savedState",
  ]
end
