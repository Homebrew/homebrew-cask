cask "vnc-viewer" do
  version "7.1.0"
  sha256 "062621a100acaf4f0aeb8cc20160a8d7adcc16ffc6bb175b88d42c3dcf2ff5f7"

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
