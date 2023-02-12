cask "tigervnc-viewer" do
  version "1.13.0"
  sha256 "14e84c37c13d1068cbf69a57f04196c0a276c5f4f83c7a44a2cf7197228f50eb"

  url "https://downloads.sourceforge.net/tigervnc/TigerVNC-#{version}.dmg",
      verified: "downloads.sourceforge.net/tigervnc/"
  name "TigerVNC"
  desc "Multi-platform VNC client and server"
  homepage "https://tigervnc.org/"

  livecheck do
    url "https://github.com/TigerVNC/tigervnc"
    strategy :github_latest
  end

  app "TigerVNC Viewer #{version}.app"

  zap trash: "~/Library/Saved Application State/com.tigervnc.tigervnc.savedState"
end
