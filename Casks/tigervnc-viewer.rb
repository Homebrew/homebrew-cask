cask "tigervnc-viewer" do
  version "1.11.0"
  sha256 "851fa20a55e7144e2fe3210aee65e977ea7df5fde3f2287014db946dbaa9a37e"

  url "https://bintray.com/tigervnc/stable/download_file?file_path=TigerVNC-#{version}.dmg",
      verified: "bintray.com/tigervnc/"
  appcast "https://github.com/TigerVNC/tigervnc/releases.atom"
  name "TigerVNC"
  desc "Multi-platform VNC client and server"
  homepage "https://tigervnc.org/"

  app "TigerVNC Viewer #{version}.app"
end
