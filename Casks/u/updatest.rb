cask "updatest" do
  version "3.1.0"
  sha256 "e94e8eae69da95103330c0fa6a002907a21815bd8ef79c1e923e13fe036071fd"

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
