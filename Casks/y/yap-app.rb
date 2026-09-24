cask "yap-app" do
  version "0.1.13"
  sha256 "177858d18ac7d6680c22b37ca1239bed111e6bb220f374a43d5d3465c45f2aca"

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
