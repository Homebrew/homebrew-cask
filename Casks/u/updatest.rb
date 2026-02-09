cask "updatest" do
  version "2.1.1"
  sha256 :no_check

  url "https://updatest.app/download/Updatest.zip"
  name "Updatest"
  desc "Utility that shows the latest app updates"
  homepage "https://updatest.app/"

  livecheck do
    url "https://updatest.app/download/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sequoia"

  app "Updatest.app"

  zap trash: [
    "~/Library/Application Support/Updatest",
    "~/Library/Caches/app.updatest.Updatest",
    "~/Library/Caches/Updatest",
    "~/Library/HTTPStorages/app.updatest.Updatest",
    "~/Library/Preferences/app.updatest.Updatest.plist",
  ]
end
