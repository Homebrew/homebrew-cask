cask "zed" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.10.2"
  sha256 arm:   "28853c50ca221ed14d84ddec2f9ea44f1afe6bfda83265a5f2a52c250b5bfb0d",
         intel: "f11baffeefda408715c9a9cfacea6b7cfd55296a30e6e39a785dcd74b8333958"

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

  generate_completions_from_executable "#{HOMEBREW_PREFIX}/bin/zed", "--completions",
                                       shells: [:bash, :zsh, :fish, :pwsh]

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
