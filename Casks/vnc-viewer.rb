cask "vnc-viewer" do
  version "6.21.406"
  sha256 "613e67e87632ae1fa266e72d051fdbf77a32fe2e3d29e372bbf00c6159a35dd2"

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
