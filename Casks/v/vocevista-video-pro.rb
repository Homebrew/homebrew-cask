cask "vocevista-video-pro" do
  version "5.11.0.9351"
  sha256 "889b03dcf12d21263cfad064154868def9dd09257e8a043e33176343cc630466"

  url "https://download.sygyt.com/#{version.major_minor_patch}/VoceVistaVideoPro_macOS_#{version}.dmg"
  name "VoceVista Video Pro"
  desc "High-resolution voice spectrum and vibrato analyzer"
  homepage "https://www.sygyt.com/"

  livecheck do
    url "https://www.sygyt.com/en/download-mac/"
    regex(/>\s*Version\s+v?(\d+(?:\.\d+)+)\s*</i)
  end

  depends_on macos: :ventura

  app "VoceVista Video Pro.app"

  zap trash: [
    "~/Library/Application Support/Sygyt Software/VoceVista Video Pro",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.sygyt.mac.VoceVistaVideoPro",
    "~/Library/Caches/Sygyt Software/VoceVista Video Pro",
    "~/Library/Preferences/com.sygyt.mac.VoceVistaVideoPro.plist",
    "~/Library/Preferences/com.sygyt.VoceVista Video Pro.plist",
  ]
end
