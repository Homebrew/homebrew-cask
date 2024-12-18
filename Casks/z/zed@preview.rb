cask "zed@preview" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.167.0"
  sha256 arm:   "e8ff16dfc3bfeba739c7c40d6eb055f3f39d39b8493d150dbb3b62f7507ea523",
         intel: "335e792f704b2b3fe371bcb3a3a60254ecc689bdb531137764bca5b0dab4b9bf"

  url "https://zed.dev/api/releases/preview/#{version}/Zed-#{arch}.dmg"
  name "Zed Preview"
  desc "Multiplayer code editor"
  homepage "https://zed.dev/"

  livecheck do
    url "https://zed.dev/api/releases/latest?asset=Zed.dmg&preview=1&os=macos&arch=#{arch}"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Zed Preview.app"
  binary "#{appdir}/Zed Preview.app/Contents/MacOS/cli", target: "zed-preview"

  zap trash: [
    "~/.config/zed",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dev.zed.zed-preview.sfl*",
    "~/Library/Application Support/Zed",
    "~/Library/Caches/dev.zed.Zed-Preview",
    "~/Library/HTTPStorages/dev.zed.Zed-Preview",
    "~/Library/Logs/Zed",
    "~/Library/Preferences/dev.zed.Zed-Preview.plist",
    "~/Library/Saved Application State/dev.zed.Zed-Preview.savedState",
  ]
end
