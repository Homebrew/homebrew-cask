cask "vnc-viewer" do
  version "6.22.515"
  sha256 "14a1bb207e8c9d68c0c8a0377b2ae9c5fa4b51c841c0c5ef5fdf9014f7b5881f"

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
