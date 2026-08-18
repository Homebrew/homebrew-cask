cask "zed@preview" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.16.1"
  sha256 arm:   "3eaf03585b84ea7b18259074de1742430767c525ab3ecb284b5c99bf0c9d8657",
         intel: "b2f7542e7f04afdd8ee8840b877f5a4d9654ddc52a766a75b441862fd3ca0f40"

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
