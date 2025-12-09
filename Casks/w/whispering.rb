cask "whispering" do
  arch arm: "aarch64", intel: "x64"

  version "7.9.0"
  sha256 arm:   "6a0e45d47ecdb2ada6afa8309914dd73c03db896fd153272e0891976867851c7",
         intel: "3a84747fb24a218113ac31da3b790d6feb89c8a66c07da8033053c2cb4ecb04c"

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
