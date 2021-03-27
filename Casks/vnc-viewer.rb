cask "vnc-viewer" do
  version "6.21.118"
  sha256 "42c5ffeb694e9f96dbb3e0528b8875fe8890e245b81733bd584c68747b446f7b"

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
