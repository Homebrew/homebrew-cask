cask "whispering" do
  arch arm: "aarch64", intel: "x64"

  version "7.11.0"
  sha256 arm:   "52b79ad24f14907fad55673761935ba90ce70c6d3248f804a7d302b62bfef828",
         intel: "90ed2c20a08123840c8a20e8579d9c7c7013d4275ec0f78ebc7cd49f39ac3efa"

  url "https://github.com/epicenter-os/epicenter/releases/download/v#{version}/Whispering_#{version}_#{arch}.dmg",
      verified: "github.com/epicenter-os/epicenter/"
  name "Whispering"
  name "Epicenter Whispering"
  desc "Audio transcription that works with local and cloud models"
  homepage "https://whispering.epicenter.so/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Whispering.app"

  zap trash: [
    "~/Library/Application Support/com.bradenwong.whispering",
    "~/Library/Caches/com.bradenwong.whispering",
    "~/Library/Logs/com.bradenwong.whispering",
    "~/Library/Preferences/com.bradenwong.whispering.plist",
    "~/Library/Saved Application State/com.bradenwong.whispering.savedState",
    "~/Library/WebKit/com.bradenwong.whispering",
  ]
end
