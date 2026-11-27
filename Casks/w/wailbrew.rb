cask "wailbrew" do
  version "0.15.2"
  sha256 "59e1f6c65f05198082d9bddc18d5e3b37c649a0d5539e843a715cbf071bbb716"

  url "https://github.com/wickenico/WailBrew/releases/download/v#{version}/wailbrew-v#{version}.zip"
  name "WailBrew"
  desc "Manage Homebrew packages with a UI"
  homepage "https://github.com/wickenico/WailBrew"

  depends_on macos: :monterey

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
