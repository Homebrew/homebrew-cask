cask "whimsical" do
  arch arm: "arm64", intel: "x64"

  version "2026.10.2,260812y9dp5bzsh"
  sha256 arm:   "bd481850d38356027b8689f4de6ce56369cf2c9f060574227a7b8b489e28cfdb",
         intel: "a66e0d949f0d312bf1acc80260cdbf4b05d699b20ec781fe0e9aeffaf4a5092c"

  url "https://download.todesktop.com/2402209z4j37b73/Whimsical%20#{version.csv.first}%20-%20Build%20#{version.csv.second}-#{arch}-mac.zip",
      verified: "download.todesktop.com/2402209z4j37b73/"
  name "Whimsical"
  desc "Collaboration and diagramming tool"
  homepage "https://whimsical.com/"

  livecheck do
    url "https://download.todesktop.com/2402209z4j37b73/latest-mac.yml"
    regex(/Whimsical\s(\d+(?:\.\d+)+)(?:\s-\sBuild\s([a-z\d]+?))?-#{arch}-mac\.zip/i)
    strategy :electron_builder do |yaml, regex|
      yaml["files"]&.map do |item|
        match = item["url"]&.match(regex)
        next if match.blank?

        match[2].present? ? "#{match[1]},#{match[2]}" : match[1]
      end
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Whimsical.app"

  zap trash: [
    "~/Library/Application Support/Whimsical",
    "~/Library/Caches/com.whimsical.desktop",
    "~/Library/Caches/com.whimsical.desktop.ShipIt",
    "~/Library/Logs/Whimsical",
    "~/Library/Preferences/com.whimsical.desktop.plist",
    "~/Library/Saved Application State/com.whimsical.desktop.savedState",
  ]
end
