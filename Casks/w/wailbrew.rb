cask "wailbrew" do
  version "0.9.5"
  sha256 "7ee76fb0b1c086d68356bc443d474b1ca21c190d550c7bdab23461d667210922"

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
