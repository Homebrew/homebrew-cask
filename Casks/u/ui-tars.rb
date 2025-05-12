cask "ui-tars" do
  arch arm: "arm64", intel: "x64"

  version "0.1.1"
  sha256 arm:   "a39a2466e7c006f92a4414802c8ddbbeca02e337824c94024ce7c434a0b35dd8",
         intel: "03e73a473bc655d0b3f4d447fdb536ac838deb0eeaf3b57fc2cb729a76565168"

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
