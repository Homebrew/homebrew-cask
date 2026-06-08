cask "vocevista-video-pro" do
  version "5.11.1.9379"
  sha256 "fe2f00ba40362ee8c2e7b7929267c8eb91ce7d121a1e8262ea6287980f5037fb"

  url "https://download.sygyt.com/#{version.major_minor_patch}/VoceVistaVideoPro_macOS_#{version}.dmg"
  name "VoceVista Video Pro"
  desc "High-resolution voice spectrum and vibrato analyzer"
  homepage "https://www.sygyt.com/"

  livecheck do
    url "https://www.sygyt.com/dwnld/518/"
    strategy :header_match
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
