cask "updatest" do
  version "3.0.0"
  sha256 "dae305f0bbcb1b6b0e5cd8927daedb245484ec3889a88f99a1c559cb93e1d20a"

  url "https://updatest.app/download/Updatest-#{version}.zip"
  name "Updatest"
  desc "Utility that shows the latest app updates"
  homepage "https://updatest.app/"

  livecheck do
    url "https://updatest.app/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: :sequoia

  app "Updatest.app"

  zap trash: [
    "~/Library/Application Support/Updatest",
    "~/Library/Caches/app.updatest.Updatest",
    "~/Library/Caches/Updatest",
    "~/Library/HTTPStorages/app.updatest.Updatest",
    "~/Library/Preferences/app.updatest.Updatest.plist",
  ]
end
