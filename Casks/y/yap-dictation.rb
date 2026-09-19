cask "yap-dictation" do
  version "0.1.12"
  sha256 "c600cad9120cbd7ec463d001f002ba3e6cfdf2445577cb957d4166d62824b28e"

  url "https://github.com/FrigadeHQ/yap/releases/download/v#{version}/Yap.dmg"
  name "Yap"
  desc "On-device voice dictation"
  homepage "https://frigade.com/yap"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Yap.app"

  zap trash: [
    "~/Library/Application Support/Yap",
    "~/Library/Preferences/com.frigade.Yap.plist",
  ]
end
