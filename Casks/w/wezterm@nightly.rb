cask "wezterm@nightly" do
  version :latest
  sha256 :no_check

  url "https://github.com/wezterm/wezterm/releases/download/nightly/WezTerm-macos-nightly.zip",
      verified: "github.com/wezterm/wezterm/"
  name "WezTerm"
  desc "GPU-accelerated cross-platform terminal emulator and multiplexer"
  homepage "https://wezterm.org/"

  conflicts_with cask: "wezterm"
  depends_on macos: ">= :sierra"

  app "WezTerm.app"
  %w[
    wezterm
    wezterm-gui
    wezterm-mux-server
    strip-ansi-escapes
  ].each do |tool|
    binary "#{appdir}/WezTerm.app/Contents/MacOS/#{tool}"
  end

  bash_completion "#{appdir}/WezTerm.app/Contents/Resources/shell-completion/bash", target: "wezterm"
  fish_completion "#{appdir}/WezTerm.app/Contents/Resources/shell-completion/fish", target: "wezterm.fish"
  zsh_completion "#{appdir}/WezTerm.app/Contents/Resources/shell-completion/zsh", target: "_wezterm"

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
