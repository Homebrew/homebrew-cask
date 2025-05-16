cask "ui-tars" do
  arch arm: "arm64", intel: "x64"

  version "0.1.2"
  sha256 arm:   "9b15ea4c3d2224a643e5510c661435ea46d2dcceed312ddb76a3fa8183f15e41",
         intel: "9ae297b7b6eb6aa3d5ed8bcb3e33add944fdf176a061f88b19b647725e51b619"

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
