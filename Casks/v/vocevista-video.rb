cask "vocevista-video" do
  version "5.11.1.9379"
  sha256 "dac305877c9aa77d4923f9fab683ce119d06fe21c26b22bec4c4f61074155f0a"

  url "https://download.sygyt.com/#{version.major_minor_patch}/VoceVistaVideo_macOS_#{version}.dmg"
  name "VoceVista Video"
  desc "Voice spectrum analyzer with resonance and vowel analysis"
  homepage "https://www.sygyt.com/"

  livecheck do
    url "https://www.sygyt.com/dwnld/516/"
    strategy :header_match
  end

  depends_on macos: :ventura

  app "VoceVista Video.app"

  zap trash: [
    "~/Library/Application Support/Sygyt Software/VoceVista Video",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.sygyt.mac.VoceVistaVideo",
    "~/Library/Caches/Sygyt Software/VoceVista Video",
    "~/Library/Preferences/com.sygyt.mac.VoceVistaVideo.plist",
    "~/Library/Preferences/com.sygyt.VoceVista Video.plist",
  ]
end
