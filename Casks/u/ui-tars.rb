cask "ui-tars" do
  arch arm: "arm64", intel: "x64"

  version "0.1.3"
  sha256 arm:   "f4aba76ff9a2e2e276a0069a4ff10958ebfd252123bb8cab2c7bc1029a9e7b0f",
         intel: "5b1612bf7a352778bd4da974fcbe9fbd866c33d09d1626fcdbce201cb2bfa521"

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
