cask "vocevista-video" do
  version "6.0.2.10487"
  sha256 "b154469fd4ec17129b126ac32e911743df432840c4069d5a753517789951dfa9"

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
