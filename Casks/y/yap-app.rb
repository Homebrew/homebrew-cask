cask "yap-app" do
  version "0.1.16"
  sha256 "6e7e6b4ba5fd3dc420e26fa3bfc01272360f0ee8fc7d16b1fc6781a29b6e5c3a"

  url "https://github.com/FrigadeHQ/yap/releases/download/v#{version}/Yap.dmg"
  name "Yap"
  desc "On-device voice dictation"
  homepage "https://frigade.com/yap"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Yap.app"

  zap trash: [
    "~/Library/Application Support/Yap",
    "~/Library/Preferences/com.frigade.Yap.plist",
  ]
end
