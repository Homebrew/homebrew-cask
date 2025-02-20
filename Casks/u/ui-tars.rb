cask "ui-tars" do
  arch arm: "arm64", intel: "x64"

  version "0.0.6"
  sha256 arm:   "2642ad51157eb996e763c3b57b0cde705130ac10a07e063b9e34553d6aaa0ffc",
         intel: "8eb48bd558d8a55fcce75e682ef7b2b033fd5554d7afd3c88dbae3de8cf09fe2"

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
