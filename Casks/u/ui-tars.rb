cask "ui-tars" do
  arch arm: "arm64", intel: "x64"

  version "0.2.3"
  sha256 arm:   "d95df1005d40336da9455f1e7dfca42e672bd0c22fe1b2da623bdcd3f0ab5a53",
         intel: "99f091eabde2b71e458881616bea9481ecda0ff9017bc0c429ddbcc7212ce8e1"

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
