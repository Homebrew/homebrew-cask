cask "vocamac" do
  version "0.6.0"
  sha256 "38b79d439ea095a159fe01932d976b42801809eda4da1b7d197172b0f49f3320"

  url "https://github.com/jatinkrmalik/vocamac/releases/download/v#{version}/VocaMac-#{version}-arm64.zip",
      verified: "github.com/jatinkrmalik/vocamac/"
  name "VocaMac"
  desc "Local voice-to-text dictation using WhisperKit"
  homepage "https://vocamac.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "VocaMac.app"

  uninstall quit: "com.vocamac.app"

  zap trash: [
    "~/Library/Application Support/VocaMac",
    "~/Library/Caches/com.vocamac.app",
    "~/Library/Preferences/com.vocamac.app.plist",
  ]
end
