cask "ui-tars" do
  arch arm: "arm64", intel: "x64"

  version "0.0.5"
  sha256 arm:   "1046fe6e0c6f8d3c348f0b61c3d4e5c6d224abd6c92304139fefa6e3d9dee631",
         intel: "7d86e3e6b26eb768cfbdfe1b6e9a8768e4b5e2b61351e6bce740a1df627daeef"

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
