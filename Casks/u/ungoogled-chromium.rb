cask "ungoogled-chromium" do
  arch arm: "arm64", intel: "x86_64"

  version "157.0.8103.78-1.1"
  sha256 arm:   "bdfe0ee51e47b7ff49c94778c6d9adb08a626dfbd6089570bbbb455410f1a41a",
         intel: "8a7306ac6218f8b0f3c38b570922115b9545749ae4c0b2c29bbd1ebb5c00459f"

  url "https://github.com/ungoogled-software/ungoogled-chromium-macos/releases/download/#{version}/ungoogled-chromium_#{version}_#{arch}-macos.dmg"
  name "Ungoogled Chromium"
  desc "Google Chromium, sans integration with Google"
  homepage "https://ungoogled-software.github.io/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:[.-]\d+)+)(?:[._-]#{arch})?(?:[._-]+?(\d+(?:\.\d+)*))?$/i)
    strategy :github_latest do |json, regex|
      match = json["tag_name"]&.match(regex)
      next if match.blank?

      match[1]
    end
  end

  conflicts_with cask: "chromium"
  depends_on macos: :ventura

  app "Chromium.app"

  uninstall quit: "io.ungoogled-software.ungoogled-chromium"

  zap trash: [
    "~/Library/Application Support/Chromium",
    "~/Library/Caches/Chromium",
    "~/Library/Preferences/io.ungoogled-software.ungoogled-chromium.plist",
    "~/Library/Preferences/org.chromium.Chromium.plist",
    "~/Library/Saved Application State/org.chromium.Chromium.savedState",
  ]
end
