cask "vnc-viewer" do
  version "6.22.315"
  sha256 "b488977d1a16e2db46e456524635ffbbee77176b7eb98335a582b895f09cecbf"

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
