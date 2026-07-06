cask "wailbrew" do
  version "0.9.23"
  sha256 "6e0b1b029570b2ea23446089d884b8c7c37c5b4f711902fc9b9f6bdf6dc08a97"

  url "https://github.com/wickenico/WailBrew/releases/download/v#{version}/wailbrew-v#{version}.zip"
  name "WailBrew"
  desc "Manage Homebrew packages with a UI"
  homepage "https://github.com/wickenico/WailBrew"

  depends_on macos: :big_sur

  app "WailBrew.app"

  zap trash: [
    "~/.config/wailbrew",
    "~/Library/Application Support/WailBrew",
    "~/Library/Caches/io.github.wickenico.wailbrew",
    "~/Library/Preferences/dev.wailbrew.plist",
    "~/Library/Preferences/io.github.wickenico.wailbrew.plist",
    "~/Library/Saved Application State/dev.wailbrew.savedState",
    "~/Library/WebKit/io.github.wickenico.wailbrew",
  ]
end
