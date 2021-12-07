cask "wezterm" do
  version "20211205-192649,672c1cc1"
  sha256 "74be671b70935e9b694ec18bef1978068aa0ea951ca0ff5881a6698dbbc7a5a2"

  url "https://github.com/wez/wezterm/releases/download/#{version.before_comma}-#{version.after_comma}/WezTerm-macos-#{version.before_comma}-#{version.after_comma}.zip",
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

  app "WezTerm-macos-#{version.before_comma}-#{version.after_comma}/WezTerm.app"

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
