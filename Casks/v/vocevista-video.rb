cask "vocevista-video" do
  version "5.11.0.9351"
  sha256 "9b2d7bd0c41cfef8c55717ef043b33f72dc48bd8b94248f94e833d11b4b56aa1"

  url "https://download.sygyt.com/5.11.0/VoceVistaVideo_macOS_#{version}.dmg"
  name "VoceVista Video"
  desc "Voice spectrum analyzer with resonance and vowel analysis"
  homepage "https://www.sygyt.com/"

  livecheck do
    url "https://www.sygyt.com/en/download-mac/"
    regex(/>\s*Version\s+v?(\d+(?:\.\d+)+)\s*</i)
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
