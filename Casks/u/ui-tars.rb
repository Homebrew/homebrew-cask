cask "ui-tars" do
  arch arm: "arm64", intel: "x64"

  version "0.2.2"
  sha256 arm:   "1ed8914bf61a1253cc2b887dede0876b15f04bb30d17e520ae66acfee5a15a87",
         intel: "a8e3f34be22b4fe914e79ea577063dc930bc02de696076393e745f734f72f385"

  url "https://github.com/bytedance/UI-TARS-desktop/releases/download/v#{version}/UI-TARS-#{version}-#{arch}.dmg"
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
