cask "vicinae" do
  version "0.28.1"
  sha256 "6cf27bfcb83b127a3af4a3df32267e171cd58046f241d983fd166dc238617039"

  url "https://github.com/vicinaehq/vicinae/releases/download/v#{version}/Vicinae.dmg"
  name "Vicinae"
  desc "Application launcher and command palette"
  homepage "https://vicinae.com/"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Vicinae.app"
  binary "#{appdir}/Vicinae.app/Contents/MacOS/vicinae-cli", target: "vicinae"

  zap trash: [
    "~/.cache/vicinae",
    "~/.config/vicinae",
    "~/.local/share/vicinae",
    "~/.local/state/vicinae",
    "~/Library/Caches/com.vicinaehq.Vicinae",
    "~/Library/Caches/vicinae",
    "~/Library/HTTPStorages/com.vicinaehq.Vicinae",
  ]
end
