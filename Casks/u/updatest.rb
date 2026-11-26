cask "updatest" do
  version "3.1.1"
  sha256 "dd7db670c2b3709a0f939ddfcd5d8b3ac239fd52eb45f40802d204f56ac29503"

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
