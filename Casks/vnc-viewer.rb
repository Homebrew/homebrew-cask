cask "vnc-viewer" do
  version "6.22.207"
  sha256 "970042fed69ac6ff4dba28e44abd932de13ce332b5c7d29d5a99df0602d573f2"

  url "https://www.realvnc.com/download/file/viewer.files/VNC-Viewer-#{version}-MacOSX-x86_64.dmg"
  name "Real VNC Viewer"
  desc "Remote desktop application focusing on security"
  homepage "https://www.realvnc.com/"

  livecheck do
    url "https://www.realvnc.com/en/connect/download/viewer/macos/"
    regex(%r{href=.*?/VNC-Viewer-(\d+(?:\.\d+)+)-MacOSX-x86_64\.dmg}i)
  end

  app "VNC Viewer.app"

  zap trash: [
    "~/Library/Preferences/com.realvnc.vncviewer.plist",
    "~/Library/Saved Application State/com.realvnc.vncviewer.savedState",
  ]
end
