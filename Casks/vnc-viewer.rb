cask "vnc-viewer" do
  version "6.21.920"
  sha256 "9009c37ada8b51f92358e6aec97ea756e8415046c6272642dd1ff9f742e0788d"

  url "https://www.realvnc.com/download/file/viewer.files/VNC-Viewer-#{version}-MacOSX-x86_64.dmg"
  name "Real VNC Viewer"
  desc "Remote desktop application focusing on security"
  homepage "https://www.realvnc.com/"

  livecheck do
    url "https://www.realvnc.com/en/connect/download/viewer/macos/"
    strategy :page_match
    regex(%r{href=.*?/VNC-Viewer-(\d+(?:\.\d+)*)-MacOSX-x86_64\.dmg}i)
  end

  app "VNC Viewer.app"

  zap trash: [
    "~/Library/Preferences/com.realvnc.vncviewer.plist",
    "~/Library/Saved Application State/com.realvnc.vncviewer.savedState",
  ]
end
