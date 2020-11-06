cask "vnc-viewer" do
  version "6.20.817"
  sha256 "fc3956181f1ffe2908d372c4be6a8a9baeb342d6ecf39179af0d86a57dca1d14"

  url "https://www.realvnc.com/download/file/viewer.files/VNC-Viewer-#{version}-MacOSX-x86_64.dmg"
  appcast "https://www.realvnc.com/en/connect/download/viewer/macos/"
  name "Real VNC Viewer"
  desc "Remote desktop application focusing on security"
  homepage "https://www.realvnc.com/"

  app "VNC Viewer.app"

  zap trash: [
    "~/Library/Preferences/com.realvnc.vncviewer.plist",
    "~/Library/Saved Application State/com.realvnc.vncviewer.savedState",
  ]
end
