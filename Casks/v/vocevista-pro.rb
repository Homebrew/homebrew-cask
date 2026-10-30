cask "vocevista-pro" do
  version "6.0.2.10487"
  sha256 "597e5c2d009ef510b372b99457e1c243e8b250799afd8e85aeb52851d3d1b051"

  url "https://download.sygyt.com/#{version.major_minor_patch}/VoceVistaPro_macOS_#{version}.dmg"
  name "VoceVista Pro"
  desc "High-resolution voice spectrum and vibrato analyzer"
  homepage "https://www.vocevista.com/en/"

  livecheck do
    url "https://www.vocevista.com/downloads/vocevista-pro-mac/"
    strategy :header_match
  end

  depends_on macos: :ventura

  app "VoceVista Pro.app"

  uninstall quit: "com.sygyt.mac.VoceVistaVideoPro"

  zap trash: [
    "~/Library/Application Support/Sygyt Software/VoceVista Video Pro",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.sygyt.mac.VoceVistaVideoPro",
    "~/Library/Caches/Sygyt Software/VoceVista Video Pro",
    "~/Library/Preferences/com.sygyt.mac.VoceVistaVideoPro.plist",
    "~/Library/Preferences/com.sygyt.VoceVista Video Pro.plist",
  ]
end
