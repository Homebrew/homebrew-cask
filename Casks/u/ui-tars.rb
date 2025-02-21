cask "ui-tars" do
  arch arm: "arm64", intel: "x64"

  version "0.0.6"
  sha256 arm:   "6f293e5c8d61243581cc17bae7d63d5c8ee45b6348ff4c77f906639241401973",
         intel: "1094ef490a4760bb7cdcde503d8a4b19577eb4668e9450c8a4f6d1b868ac143f"

  url "https://github.com/bytedance/UI-TARS-desktop/releases/download/v#{version}/UI.TARS-#{version}-#{arch}.dmg"
  name "UI-TARS Desktop"
  desc "GUI Agent for computer control using UI-TARS vision-language model"
  homepage "https://github.com/bytedance/UI-TARS-desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "UI TARS.app"

  uninstall quit: "com.bytedance.uitars"

  zap trash: [
    "~/Library/Application Support/ui-tars-desktop",
    "~/Library/Logs/ui-tars-desktop",
  ]
end
