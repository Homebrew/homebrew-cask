cask "wailbrew" do
  version "0.9.10"
  sha256 "aef7b2cc3938abddeb3889e314bbebf7dd033373da17c9d8f45c9498c1a0f6fa"

  url "https://github.com/wickenico/WailBrew/releases/download/v#{version}/wailbrew-v#{version}.zip"
  name "WailBrew"
  desc "Manage Homebrew packages with a UI"
  homepage "https://github.com/wickenico/WailBrew"

  depends_on macos: ">= :big_sur"

  app "WailBrew.app"

  zap trash: [
    "~/Library/Application Support/WailBrew",
    "~/Library/Preferences/dev.wailbrew.plist",
    "~/Library/Saved Application State/dev.wailbrew.savedState",
  ]
end
