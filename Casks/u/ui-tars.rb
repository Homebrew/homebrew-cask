cask "ui-tars" do
  arch arm: "arm64", intel: "x64"

  version "0.0.5"
  sha256 arm:   "9668b268256411ecee063d75f35244256c196a44efffc505ec1efc530aefb479",
         intel: "7d6e22e8b5553d1233d42a9f4cc5cb3a0cc524cd838f9e2b97b8f8ee5a5561ca"

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
