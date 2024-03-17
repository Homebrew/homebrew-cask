cask "vivid" do
  version "2.9build1"
  sha256 "45f180d875f38882eac81293fc524458ed6f1dcffac4927cf28cfbb8c617dcb4"

  url "https://lumen-digital.com/apps/vivid/releases/Vivid#{version.sub(/build\d+/, "")}.zip",
      verified: "lumen-digital.com/apps/vivid/releases/"
  name "Vivid"
  desc "Adaptive brightness for displays"
  homepage "https://www.getvivid.app/"

  livecheck do
    url "https://lumen-digital.com/apps/vivid/appcast.xml"
    strategy :sparkle do |item|
      target_date = Time.parse("2024-03-12 10:39:00 +0000")
      "#{item.short_version}build1" if (item.short_version == "2.9") && (target_date == item.pub_date)
    end
  end

  app "Vivid.app"

  zap trash: [
    "~/Library/HTTPStorages/com.goodsnooze.vivid",
    "~/Library/Preferences/com.goodsnooze.vivid.plist",
  ]
end
