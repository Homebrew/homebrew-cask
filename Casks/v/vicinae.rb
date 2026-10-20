cask "vicinae" do
  version "0.29.2"
  sha256 "7a5f29d159c81cbf49af5400d8f9cbb2e65bb06a72dd0d4e93c848aad3eaa4e0"

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
