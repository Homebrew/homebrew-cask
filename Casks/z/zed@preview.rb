cask "zed@preview" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.17.1"
  sha256 arm:   "7f9a4d14978f6a70b854983095ae392f69e6cac3845bfb85b66e5cae7c8eaa41",
         intel: "937d3f5a98d0d08efe039d98fec106e11db6fed5b4f687dc980a059be7b32b2e"

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
