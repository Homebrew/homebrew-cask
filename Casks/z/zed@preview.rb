cask "zed@preview" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.158.0"
  sha256 arm:   "41e4f170ea3e9f815597513da8b9a5f7857f1e9f5dc69ce513486403a75ef2f8",
         intel: "ca187dae4ba4562de1c0da7daec5a131b1471feadf51d0b600fcc88aa76a937b"

  url "https://zed.dev/api/releases/preview/#{version}/Zed-#{arch}.dmg"
  name "Zed Preview"
  desc "Multiplayer code editor"
  homepage "https://zed.dev/"

  livecheck do
    url "https://zed.dev/api/releases/latest?asset=Zed.dmg&preview=1"
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
