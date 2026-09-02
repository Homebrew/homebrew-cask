cask "vicinae" do
  version "0.28.0"
  sha256 "5bcdf26d368d2520c9e01441208fb2c271e2682238fba238c909071c9da36de6"

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
