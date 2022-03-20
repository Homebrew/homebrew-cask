cask "wezterm" do
  version "20220319-142410,0fcdea07"
  sha256 "615183df3b5379e1cbbe369988ab6ed7294b4f24e1dc99fc707e09c2589755ed"

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
