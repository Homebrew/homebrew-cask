cask "voicemod" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "3.16.18"
  sha256 arm:   "6fc9e3c36dd4761336055979732b880fc4e9ef4fcfc2bb299e06ff03cf533b14",
         intel: "ebbf3af678d81d42b2a2844c98e7df05716e3d53df9f4a27ae510b0943788dc4"

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
