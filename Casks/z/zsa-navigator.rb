cask "zsa-navigator" do
  version "1.0.3,4"
  sha256 :no_check

  url "https://oryx.nyc3.cdn.digitaloceanspaces.com/navigator-app/Navigator.dmg",
      verified: "oryx.nyc3.cdn.digitaloceanspaces.com/navigator-app/"
  name "Navigator"
  desc "Companion app for ZSA's Navigator trackpad"
  homepage "https://www.zsa.io/voyager/navigator"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true
  depends_on macos: :ventura

  app "Navigator.app"

  zap trash: [
    "~/Library/HTTPStorages/io.zsa.navigator",
    "~/Library/Preferences/io.zsa.navigator.plist",
    "~/Library/WebKit/io.zsa.navigator",
  ]
end
