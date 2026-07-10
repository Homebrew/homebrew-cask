cask "zed@preview" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.11.2"
  sha256 arm:   "643c1f59f3f953424d4ef5fde8812d29288b747ed2c811c63493f0f4e1591c03",
         intel: "e4c97148ccfc6978ed75b297cdc181e7713f92596ea68b2c4443baf50c09671c"

  url "https://zed.dev/api/releases/preview/#{version}/Zed-#{arch}.dmg"
  name "Zed Preview"
  desc "Multiplayer code editor"
  homepage "https://zed.dev/"

  livecheck do
    url "https://cloud.zed.dev/releases/preview/latest/asset?asset=zed&os=macos&arch=#{arch}"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on :macos

  app "Zed Preview.app"
  binary "#{appdir}/Zed Preview.app/Contents/MacOS/cli", target: "zed-preview"

  generate_completions_from_executable "#{HOMEBREW_PREFIX}/bin/zed-preview", "--completions",
                                       shells: [:bash, :zsh, :fish, :pwsh]

  zap trash: [
    "~/.config/zed",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dev.zed.zed-preview.sfl*",
    "~/Library/Application Support/Zed",
    "~/Library/Caches/dev.zed.Zed-Preview",
    "~/Library/Caches/Zed",
    "~/Library/HTTPStorages/dev.zed.Zed-Preview",
    "~/Library/Logs/Zed",
    "~/Library/Preferences/dev.zed.Zed-Preview.plist",
    "~/Library/Saved Application State/dev.zed.Zed-Preview.savedState",
  ]
end
