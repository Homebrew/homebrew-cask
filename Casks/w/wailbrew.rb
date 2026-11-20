cask "wailbrew" do
  version "0.15.0"
  sha256 "591c1e40c64a7fe25b0d17da27751e82ea19b4ffd194cb27cc9c0438d44988cd"

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
