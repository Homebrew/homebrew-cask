cask "unite" do
  version "4.0,sWbXL0HYRsWzxwrH8Zw1"
  sha256 "80bef525cdbeee5d35da93d0aa71a42dd268b039ce4f61f242ee18f103538ff9"

  url "https://paddle.s3.amazonaws.com/fulfillment_downloads/20398/638879/#{version.after_comma}_Unite.zip",
      verified: "paddle.s3.amazonaws.com/fulfillment_downloads/20398/638879/"
  appcast "https://drive.google.com/uc?export=download&id=1gb_luG8qUL6XZu8tdI-9zrUE9I_oFBmo"
  name "Unite"
  desc "Turn websites into apps"
  homepage "https://bzgapps.com/unite"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Unite.app"

  zap trash: [
    "~/Library/Application Support/Unite",
    "~/Library/Application Support/com.BZG.unite.*",
    "~/Library/Preferences/com.BZG.unite.*",
  ],
      rmdir: "/Users/Shared/Unite"
end
