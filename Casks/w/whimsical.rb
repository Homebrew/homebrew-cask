cask "whimsical" do
  arch arm: "arm64", intel: "x64"

  version "2026.14.2,2610263rdo9tspo"
  sha256 arm:   "34617378ef75440b94d8f7ce98dee5964fe7294369fbbb6976a8f1f28367c53f",
         intel: "03b4d99845a0e481a46d819739c1c1f2ebe99c78ef72a518057ea463f1697002"

  url "https://download.todesktop.com/2402209z4j37b73/Whimsical%20#{version.csv.first}%20-%20Build%20#{version.csv.second}-#{arch}-mac.zip"
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
