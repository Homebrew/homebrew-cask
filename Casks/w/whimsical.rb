cask "whimsical" do
  arch arm: "arm64", intel: "x64"

  version "0.2.10,241127ipt7hsvrm"
  sha256 arm:   "67a6fe36bb9b5774ac984b0c308ae44a68bc9e9f52390ed492405ec7a5e87d3b",
         intel: "410003cc66c93580ac899f5d2c40b2121f37d01c846ff822fb0221e562aebdbb"

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
  depends_on macos: ">= :catalina"

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
