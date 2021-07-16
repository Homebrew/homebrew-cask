cask "wezterm" do
  version "20210502-154244,3f7122cb"
  sha256 "be8e235d5bf6b2876a993f8c084cd7bfc3cf8121e7aa99038d9209ee87dd9118"

  url "https://github.com/wez/wezterm/releases/download/#{version.before_comma}-#{version.after_comma}/WezTerm-macos-#{version.before_comma}-#{version.after_comma}.zip",
      verified: "github.com/wez/wezterm/"
  name "WezTerm"
  desc "GPU-accelerated cross-platform terminal emulator and multiplexer"
  homepage "https://wezfurlong.org/wezterm/"

  livecheck do
    url :url
    strategy :github_latest do |page|
      match = page.match(%r{href=.*?/WezTerm-macos-(\d{8}-\d{6})-([0-9a-f]+)\.zip}i)
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
