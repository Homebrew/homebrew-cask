cask "ui-tars" do
  arch arm: "arm64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "d5282e976ea63564183f8e1a72b1eed3ca230dfedd5d26769df30be75a92cc88",
         intel: "a4b95b0702422dd99679ca365efc4d3c64314b04c169acf32f524736462e6c0f"

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
