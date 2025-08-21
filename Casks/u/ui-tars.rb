cask "ui-tars" do
  arch arm: "arm64", intel: "x64"

  version "0.2.4"
  sha256 arm:   "30d06c29db88afb7295edb0ae557f8fbac2f47df137232ddbb9999a5a017dfd0",
         intel: "9251388e10d3b594cdf5cd25e9c8c8635c1900035055cdb2d47f7258fc0ca719"

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
