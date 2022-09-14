cask "vivid" do
  version "1.8,24"
  sha256 "9da19eb63f6066c4642889e54729648b13dbc2fc9c777659b92a482f2e74059f"

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
