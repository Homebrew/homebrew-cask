cask "vnc-viewer" do
  version "7.5.0"
  sha256 "d7c914924bf017850bad2710e18f47bf33205b8c1dca7814c9f74f95adbc2842"

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
