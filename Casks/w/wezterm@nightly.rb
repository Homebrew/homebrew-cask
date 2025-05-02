cask "wezterm@nightly" do
  version :latest
  sha256 :no_check

  url "https://github.com/wez/wezterm/releases/download/nightly/WezTerm-macos-nightly.zip",
      verified: "github.com/wez/wezterm/"
  name "WezTerm"
  desc "GPU-accelerated cross-platform terminal emulator and multiplexer"
  homepage "https://wezfurlong.org/wezterm/"

  livecheck do
    url :url
    strategy :header_match do |headers|
      # matches last-modified header syntax
      regex = /(\w{3}, )?(\d{1,2}) (\w{3}) (\d{4}) (\d{2}):(\d{2}):(\d{2}) GMT/
      match = headers["last-modified"].match(regex)
      match = headers["x-ms-creation-time"].match(regex) if match.nil?

      year = match[4]
      month_idx = %w[jan feb mar apr may jun jul aug sep oct nov dec].index do |month|
        month == match[3].downcase
      end
      month = (month_idx ? month_idx + 1 : 0).to_s.rjust(2, "0")
      day = match[2].rjust(2, "0")
      hour = match[5].rjust(2, "0")
      minute = match[6].rjust(2, "0")
      second = match[7].rjust(2, "0")
      "#{year}#{month}#{day}#{hour}#{minute}#{second}"
    end
  end

  conflicts_with cask: "wezterm"

  app "WezTerm.app"
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
