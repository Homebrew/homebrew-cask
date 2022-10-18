cask "vivid" do
  version "2.0,27"
  sha256 "480d2f64b31931119bb98fce4a84a7ed7aac6fb011480bcc3c5ce749823024d4"

  url "https://lumen-digital.com/apps/vivid/releases/Vivid#{version.csv.first}.zip",
      verified: "https://lumen-digital.com/apps/vivid"
  name "Vivid"
  desc "Adaptive brightness for displays"
  homepage "https://www.getvivid.app/"

  livecheck do
    url "https://lumen-digital.com/apps/vivid/appcast.xml"
    strategy :sparkle
  end

  app "Vivid.app"

  zap trash: [
    "~/Library/HTTPStorages/com.goodsnooze.vivid",
    "~/Library/Preferences/com.goodsnooze.vivid.plist",
  ]
end
