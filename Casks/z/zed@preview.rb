cask "zed@preview" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.14.2"
  sha256 arm:   "822cdd0a55c14354568989157cd349da80c3e36bd178b85b44a3553dc82919b4",
         intel: "f20d6d16c9bb12282e9128f63581ea387c30b38733baa927d1ec41341339a288"

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

  uninstall quit: "dev.zed.Zed-Preview"

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
