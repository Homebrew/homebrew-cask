cask "vimediamanager" do
  version "0.7a22"
  sha256 "dbb251822ba45a7a81847e863b092fcd06a811b184b39f17ad0754662d327b4b"

  url "https://github.com/vidalvanbergen/ViMediaManager/releases/download/v#{version}/ViMediaManager.dmg"
  appcast "https://github.com/vidalvanbergen/ViMediaManager/releases.atom"
  name "ViMediaManager"
  homepage "https://github.com/vidalvanbergen/ViMediaManager"

  app "ViMediaManager.app"

  zap trash: [
    "~/Library/Application Support/ViMediaManager",
    "~/Library/Caches/com.vidalvanbergen.vimediamanager-alpha",
    "~/Library/Preferences/com.vidalvanbergen.vimediamanager-alpha.plist",
    "~/Library/Saved Application State/com.vidalvanbergen.vimediamanager-alpha.savedState",
  ]
end
