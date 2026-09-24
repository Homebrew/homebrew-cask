cask "voicemod" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "3.17.18"
  sha256 arm:   "e7ef26b8b08b50551ec4a73b63ae16b6b3d644db1bf60cc7025625ad7ebb214d",
         intel: "e43dabf0810f4657459cb25d42f9e44203b0dfd4e280eefba52fa336c23cb5bb"

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
