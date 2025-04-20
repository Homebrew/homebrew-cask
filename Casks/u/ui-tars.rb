cask "ui-tars" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "09ccd9eca19e8669f94e921e08118f79674dfe9f38c45df7f2f0180b8f996473",
         intel: "84e354cfaa5da58d17e2b648c7528d7df94b6f3be2071d6a89380922f8fed616"

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
