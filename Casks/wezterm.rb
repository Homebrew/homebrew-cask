cask "wezterm" do
  version "20220624-141144,bd1b7c5d"
  sha256 "77c8c24a96fbac08858c0cb73487ba5ac947a32b504b6f8da39d27cce9da0b88"

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
