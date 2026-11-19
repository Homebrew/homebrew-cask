cask "yap-app" do
  version "0.1.17"
  sha256 "8daf1c5f6c714d66fccfaedcc82b2a5144d8b4598c1a34eacfaae86eaef954b7"

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
