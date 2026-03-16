cask "voicemod" do
  version "1.6.6"
  sha256 "eb9a2c46703e94632d785b7473db633dffc62b4b0592b96ef44829d8995c0ea4"

  url "https://flagship-versions.voicemod.net/#{version}/Voicemod_#{version}-AppleSilicon.pkg"
  name "Voicemod"
  desc "Real-time voice changer and soundboard"
  homepage "https://www.voicemod.net/"

  livecheck do
    skip "No version information available"
  end

  pkg "Voicemod_#{version}-AppleSilicon.pkg"

  uninstall pkgutil: "net.voicemod.voicemod"

  zap trash: [
    "~/Library/Application Support/Voicemod",
    "~/Library/Preferences/com.voicemod.desktop.plist",
    "~/Library/Saved Application State/com.voicemod.desktop.savedState",
  ]
end