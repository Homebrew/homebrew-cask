cask "ui-tars" do
  arch arm: "arm64", intel: "x64"

  version "0.1.2"
  sha256 arm:   "8e38c2eb1f988c2142115b0a75306245efe2d0a6880abbfb5517b25e85dafb5f",
         intel: "1f721e45558cf55f50b48beeeaace1e301d265426f08ae4fcd8873abe62080d0"

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
