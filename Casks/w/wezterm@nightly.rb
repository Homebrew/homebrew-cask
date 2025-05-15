cask "wezterm@nightly" do
  version :latest
  sha256 :no_check

  url "https://github.com/wezterm/wezterm/releases/download/nightly/WezTerm-macos-nightly.zip",
      verified: "github.com/wezterm/wezterm/"
  name "WezTerm"
  desc "GPU-accelerated cross-platform terminal emulator and multiplexer"
  homepage "https://wezterm.org/"

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

  preflight do
    # Move "WezTerm-macos-#{version}/WezTerm.app" out of the subfolder
    staged_subfolder = staged_path.glob(["WezTerm-*", "wezterm-*"]).first
    if staged_subfolder
      FileUtils.mv(staged_subfolder/"WezTerm.app", staged_path)
      FileUtils.rm_r(staged_subfolder)
    end
  end

  zap trash: "~/Library/Saved Application State/com.github.wez.wezterm.savedState"
end
