cask "zed" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.2.3"
  sha256 arm:   "77354c91418a45c9fd427d83b276fe62f0051e4d9ed7aa1805d2ec770f6e6e58",
         intel: "d22dba4a0fd272c51e45eb0c861786c9d186c8132bb5d6733e6946b574e0bf57"

  url "https://zed.dev/api/releases/stable/#{version}/Zed-#{arch}.dmg"
  name "Zed"
  desc "Multiplayer code editor"
  homepage "https://zed.dev/"

  livecheck do
    url "https://cloud.zed.dev/releases/stable/latest/asset?asset=zed&os=macos&arch=#{arch}"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on :macos

  app "Zed.app"
  binary "#{appdir}/Zed.app/Contents/MacOS/cli", target: "zed"

  zap trash: [
    "~/.config/zed",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dev.zed.zed.sfl*",
    "~/Library/Application Support/Zed",
    "~/Library/Caches/dev.zed.Zed",
    "~/Library/Caches/Zed",
    "~/Library/HTTPStorages/dev.zed.Zed",
    "~/Library/Logs/Zed",
    "~/Library/Preferences/dev.zed.Zed.plist",
    "~/Library/Saved Application State/dev.zed.Zed.savedState",
  ]
end
