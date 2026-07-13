cask "zed" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.10.3"
  sha256 arm:   "717ab14826889b83ffb46992b5155cf3e32e801805044d5d739d893ffb19a1a0",
         intel: "63a12764a0d1cc2a4cbc022a9fd1fb92bb019245bf5763ca1ec41d4e071020f5"

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
