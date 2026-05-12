cask "voicemod" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "3.15.59"
  sha256 arm:   "a36da0f0d7ce23809da6c08bf7b51f517b1c4f1a1c0a6be6c61d3383d8a50510",
         intel: "ef23722575a5c242795713827913784e3dfd0e5596abc4968efa58650a9c1222"

  url "https://flagship-versions.voicemod.net/#{version}/Voicemod_#{version}-#{arch}.pkg"
  name "Voicemod"
  desc "Real-time voice changer and soundboard"
  homepage "https://www.voicemod.net/"

  livecheck do
    url "https://api.voicemod.net/v1/nextgen/update/{}"
    strategy :json do |json|
      json["appVersion"]
    end
  end

  auto_updates true
  depends_on :macos

  pkg "Voicemod_#{version}-#{arch}.pkg"

  uninstall quit:    "net.voicemod.desktop",
            pkgutil: [
              "com.voicemod.desktop",
              "net.voicemod.desktop",
              "net.voicemod.voicemod",
            ]

  zap trash: [
    "~/Library/Application Support/Voicemod",
    "~/Library/Preferences/com.voicemod.desktop.plist",
    "~/Library/Saved Application State/com.voicemod.desktop.savedState",
  ]
end
