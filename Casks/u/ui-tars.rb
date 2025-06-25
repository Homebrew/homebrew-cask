cask "ui-tars" do
  arch arm: "arm64", intel: "x64"

  version "0.2.1"
  sha256 arm:   "deffca7888a74c6c331f6688a9a20c5da199df1060dc82aafb0f306e7233ceb8",
         intel: "1de9211d1798fecbd9f3b14fabfe830aedf7851d41de60bb64318722dc40eb84"

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
