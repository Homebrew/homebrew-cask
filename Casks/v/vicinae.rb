cask "vicinae" do
  version "0.27.4"
  sha256 "0951ed873cce41521720ba00e647e61be05827eb16ee0a4443bf121b4359f601"

  url "https://github.com/vicinaehq/vicinae/releases/download/v#{version}/Vicinae.dmg",
      verified: "github.com/vicinaehq/vicinae/"
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
