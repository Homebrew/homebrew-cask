cask "ui-tars" do
  arch arm: "arm64", intel: "x64"

  version "0.0.8"
  sha256 arm:   "38defe1a0a883552d41c71d02aecaa83872cdc5f9bd3b8c0da123b437b4395bb",
         intel: "f51ea0d63fa1921b03a13532d0e4d9458647e0d10a6476330b92e3e6483be1d8"

  url "https://github.com/bytedance/UI-TARS-desktop/releases/download/v#{version}/UI.TARS-#{version}-#{arch}.dmg"
  name "UI-TARS Desktop"
  desc "GUI Agent for computer control using UI-TARS vision-language model"
  homepage "https://github.com/bytedance/UI-TARS-desktop"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
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
