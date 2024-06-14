cask "xnapper" do
  version "1.17.1"
  sha256 "1cfbabf28fb49d117febcc81c77ced5989768f9150d451417cd4f526b048c7e7"

  url "https://xnapper.com/dmg/Xnapper-#{version}.dmg"
  name "Xnapper"
  desc "Screenshot tool"
  homepage "https://xnapper.com/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/Xnapper[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :catalina"

  app "Xnapper.app"

  zap trash: [
    "~/Library/Application Scripts/com.devuap.beautyshotapp.Xnapper-Mac-Share-Extension",
    "~/Library/Application Support/Xnapper",
    "~/Library/Caches/Xnapper",
    "~/Library/Containers/com.devuap.beautyshotapp.Xnapper-Mac-Share-Extension",
  ]
end
