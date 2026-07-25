cask "wailbrew" do
  version "0.10.1"
  sha256 "5e0679f1646c12c5fec6c478f138ba9358d71b3a297c2939ad6d23bdf391ff03"

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
