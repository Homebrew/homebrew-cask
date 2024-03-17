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
    # this is a super hackish solution only for this release
    # once a new version gets released the strategy may be changed to
    # `strategy :sparkle, &:short_version`
    strategy :sparkle do |item|
      target_date = Time.parse("2024-03-12 10:39:00 +0000")
      if (item.short_version == "2.9") && (target_date == item.pub_date)
        "#{item.short_version}build1"
      else
        item.short_version
      end
    end
  end

  app "Vivid.app"

  zap trash: [
    "~/Library/HTTPStorages/com.goodsnooze.vivid",
    "~/Library/Preferences/com.goodsnooze.vivid.plist",
  ]
end
