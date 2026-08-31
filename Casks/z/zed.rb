cask "zed" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.17.2"
  sha256 arm:   "820bae87e44056d59924d543c30540f7c56d34b9c7a816903f5b1da29214e389",
         intel: "756f1b7c7b23400c1d61ccacfa3fcb3dfd6d083f66e9e7d67cf967b612d5cf91"

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

  uninstall quit: "dev.zed.Zed"

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
