cask "tigervnc-viewer" do
  version "1.12.0"
  sha256 "bca5b2eec9d0b14d115e7cfe3999bfad58ba8437505d43c3ccf9f078b68f7932"

  url "https://downloads.sourceforge.net/tigervnc/TigerVNC-#{version}.dmg",
      verified: "downloads.sourceforge.net/tigervnc/"
  name "TigerVNC"
  desc "Multi-platform VNC client and server"
  homepage "https://tigervnc.org/"

  livecheck do
    url "https://github.com/TigerVNC/tigervnc"
    strategy :git
  end

  app "TigerVNC Viewer #{version}.app"

  zap trash: "~/Library/Saved Application State/com.tigervnc.tigervnc.savedState"
end
