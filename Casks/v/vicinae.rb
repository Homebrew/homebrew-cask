cask "vicinae" do
  version "0.23.0"
  sha256 "5836c2205c96acb195fe91c6531846709582c492cf12b69de2bdf24321117fc8"

  url "https://github.com/vicinaehq/vicinae/releases/download/v#{version}/Vicinae.dmg",
      verified: "github.com/vicinaehq/vicinae/"
  name "Vicinae"
  desc "A focused launcher for your desktop - native, fast, extensible"
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
