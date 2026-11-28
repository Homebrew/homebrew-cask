cask "voicemod" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "3.17.68"
  sha256 arm:   "a5944d7c0cdaa5564c0629bf105dce2ff1033dae32a31a51b01310d7f245425f",
         intel: "621a2e53e95840557ce04332ef22c211f055857ca462d91b87a84cb50444194f"

  url "https://flagship-versions.voicemod.net/#{version}/Voicemod_#{version}-#{arch}_Update.zip"
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
  depends_on macos: :ventura

  app "Voicemod.app"

  uninstall quit: "net.voicemod.desktop"

  zap trash: [
    "~/Library/Application Support/Voicemod",
    "~/Library/Preferences/com.voicemod.desktop.plist",
    "~/Library/Saved Application State/com.voicemod.desktop.savedState",
  ]
end
