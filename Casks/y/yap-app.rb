cask "yap-app" do
  version "0.1.15"
  sha256 "729ff973bba84e268587228afdfc7512edef3db95f8bdcc4e4ec27091f2ce01c"

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
