cask "voicemod" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "3.15.52"
  sha256 arm:   "f2859b9dc2cdaae9b4aace6a66044b29b5499657b2e92557a3d589160ef6f21e",
         intel: "456ddec68e644788f4584121e0a72b0679083286eea087cbf3e3ee5f8913623c"

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
