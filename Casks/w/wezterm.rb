cask "wezterm" do
  version "20240203-110809,5046fc22"
  sha256 "e77388cad55f2e9da95a220a89206a6c58f865874a629b7c3ea3c162f5692224"

  url "https://github.com/wez/wezterm/releases/download/#{version.csv.first}-#{version.csv.second}/WezTerm-macos-#{version.csv.first}-#{version.csv.second}.zip",
      verified: "github.com/wez/wezterm/"
  name "WezTerm"
  desc "GPU-accelerated cross-platform terminal emulator and multiplexer"
  homepage "https://wezfurlong.org/wezterm/"

  livecheck do
    url :url
    regex(/^(\d+(?:[.-]\d+)+)-(\h+)$/i)
    strategy :github_latest do |json, regex|
      json["tag_name"]&.scan(regex)&.map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  conflicts_with cask: "wezterm@nightly"

  app "WezTerm-macos-#{version.csv.first}-#{version.csv.second}/WezTerm.app"
  %w[
    wezterm
    wezterm-gui
    wezterm-mux-server
    strip-ansi-escapes
  ].each do |tool|
    binary "#{appdir}/WezTerm.app/Contents/MacOS/#{tool}"
  end

  binary "#{appdir}/WezTerm.app/Contents/Resources/shell-completion/zsh",
         target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_wezterm"
  binary "#{appdir}/WezTerm.app/Contents/Resources/shell-completion/bash",
         target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/wezterm"
  binary "#{appdir}/WezTerm.app/Contents/Resources/shell-completion/fish",
         target: "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/wezterm.fish"

  zap trash: [
    "~/.local/share/wezterm",
    "~/Library/Saved Application State/com.github.wez.wezterm.savedState",
  ]
end
