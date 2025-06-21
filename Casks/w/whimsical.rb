cask "whimsical" do
  arch arm: "arm64", intel: "x64"

  version "0.3.0,250618o1uee788u"
  sha256 arm:   "c1cc4945fb940a19d63bf386d475c5729a9a4062bf4485076bcbdd017bc252bc",
         intel: "27e3742fcedcbde7390644f6119d65cb8c4c9a06a5c64e13170ed2d7e2f51e69"

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
