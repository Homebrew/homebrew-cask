cask "ungoogled-chromium" do
  arch arm: "arm64", intel: "x86_64"

  version "149.0.7827.102-1.1"
  sha256 arm:   "c5fad9889c71197ab057fd16c4f115f29ec77624c006262180b240b75d35d926",
         intel: "423e5ac0fbd760d4ff4123861f2a20f3780d93580f33e4bad50761ad1dccce64"

  url "https://github.com/ungoogled-software/ungoogled-chromium-macos/releases/download/#{version}/ungoogled-chromium_#{version}_#{arch}-macos.dmg",
      verified: "github.com/ungoogled-software/ungoogled-chromium-macos/"
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
  depends_on macos: :monterey

  app "Chromium.app"

  zap trash: [
    "~/Library/Application Support/Chromium",
    "~/Library/Caches/Chromium",
    "~/Library/Preferences/org.chromium.Chromium.plist",
    "~/Library/Saved Application State/org.chromium.Chromium.savedState",
  ]
end
