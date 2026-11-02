cask "vocevista-basic" do
  version "6.0.2.10487"
  sha256 "b343d79b7f46f2b556017e5691e2681fe219d1bf6226adfc3d2f65c0952fc9bf"

  url "https://download.sygyt.com/#{version.major_minor_patch}/VoceVistaBasic_macOS_#{version}.dmg"
  name "VoceVista Basic"
  desc "Real-time voice spectrum analyzer and audio editor"
  homepage "https://www.sygyt.com/"

  livecheck do
    url "https://www.sygyt.com/dwnld/512/"
    strategy :header_match
  end

  depends_on macos: :ventura

  app "VoceVista Basic.app"

  uninstall quit: "com.sygyt.mac.OvertoneAnalyzer"

  zap trash: [
    "~/Library/Application Support/Sygyt Software/Overtone Analyzer",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.sygyt.mac.OvertoneAnalyzer",
    "~/Library/Caches/Sygyt Software/Overtone Analyzer",
    "~/Library/Preferences/com.sygyt.mac.OvertoneAnalyzer.plist",
    "~/Library/Preferences/com.sygyt.Overtone Analyzer.plist",
    "~/Library/Preferences/com.sygyt.VoceVista Basic.plist",
  ]
end
