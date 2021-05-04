cask "tigervnc-viewer" do
  version "1.11.0"
  sha256 "851fa20a55e7144e2fe3210aee65e977ea7df5fde3f2287014db946dbaa9a37e"

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
