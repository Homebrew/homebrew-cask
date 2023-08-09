cask "vnc-viewer" do
  version "7.6.0"
  sha256 "c1c957aac1592e03a6513bd4e052ba3c4a70d14f43fd058671c5fd968d3e4c3c"

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
