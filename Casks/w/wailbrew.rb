cask "wailbrew" do
  version "0.10.4"
  sha256 "80bbac3543d70894a8e71f886aa7af106672d51242a6ca39d14a30d2e5c4387f"

  url "https://github.com/wickenico/WailBrew/releases/download/v#{version}/wailbrew-v#{version}.zip"
  name "WailBrew"
  desc "Manage Homebrew packages with a UI"
  homepage "https://github.com/wickenico/WailBrew"

  depends_on macos: :big_sur

  app "WailBrew.app"

  zap trash: [
    "~/.config/wailbrew",
    "~/.wailbrew",
    "~/Library/Application Support/WailBrew",
    "~/Library/Caches/io.github.wickenico.wailbrew",
    "~/Library/Preferences/dev.wailbrew.plist",
    "~/Library/Preferences/io.github.wickenico.wailbrew.plist",
    "~/Library/Saved Application State/dev.wailbrew.savedState",
    "~/Library/WebKit/io.github.wickenico.wailbrew",
  ]
end
