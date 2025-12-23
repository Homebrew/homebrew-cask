cask "whimsical" do
  arch arm: "arm64", intel: "x64"

  version "0.4.2,251220tgp43duac"
  sha256 arm:   "e52bb7e9bee8d019492982dacf921d5accce9e16a7702b95993dc16cb0419bae",
         intel: "988849d326ffed4fc9d83bce53727b5cdc9a252e6899cdb0afd88af56dfa0af9"

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
  depends_on macos: ">= :monterey"

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
