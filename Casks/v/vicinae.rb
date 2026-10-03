cask "vicinae" do
  version "0.29.1"
  sha256 "e83cef0f9ad5cff3172d4520054528e4f41de7d92cd0a4c0a7890ece4efd6e1f"

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
