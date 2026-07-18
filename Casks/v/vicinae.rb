cask "vicinae" do
  version "0.23.2"
  sha256 "8e89e638f7710c0155d1c15ff9bdce94133d9c831050d0d1e9d4714d2b88b8a5"

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
  ]
end
