cask "voicemod" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "3.16.3"
  sha256 arm:   "782c114182e50d2a6b8463fbea089bcc5d382cf597e4897ff2b2cd84aae75eb7",
         intel: "bc08739d03f6f69f7686d77bd0f13addb837b47c9685670bec430e3bff83c347"

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
