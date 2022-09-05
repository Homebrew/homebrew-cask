cask "wezterm" do
  version "20220904-064125,9a6cee2b"
  sha256 "843db7d81692dbed78d2a65c5a1eebd47b699ddeec69e54130d97a083dcc4d24"

  url "https://github.com/wez/wezterm/releases/download/#{version.csv.first}-#{version.csv.second}/WezTerm-macos-#{version.csv.first}-#{version.csv.second}.zip",
      verified: "github.com/wez/wezterm/"
  name "WezTerm"
  desc "GPU-accelerated cross-platform terminal emulator and multiplexer"
  homepage "https://wezfurlong.org/wezterm/"

  livecheck do
    url :url
    regex(%r{href=.*?/WezTerm-macos-(\d{8}-\d{6})-([0-9a-f]+)\.zip}i)
    strategy :github_latest do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "WezTerm-macos-#{version.csv.first}-#{version.csv.second}/WezTerm.app"

  %w[
    wezterm
    wezterm-gui
    wezterm-mux-server
    strip-ansi-escapes
  ].each do |tool|
    binary "#{appdir}/WezTerm.app/Contents/MacOS/#{tool}"
  end

  zap trash: [
    "~/.config/wezterm/",
    "~/.wezterm.lua",
    "~/Library/Saved Application State/com.github.wez.wezterm.savedState",
  ]
end
