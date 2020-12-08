cask "unite" do
  version "3.2,638879:sWbXL0HYRsWzxwrH8Zw1"
  sha256 "80bef525cdbeee5d35da93d0aa71a42dd268b039ce4f61f242ee18f103538ff9"

  # paddle.s3.amazonaws.com/fulfillment_downloads/20398/576531/ was verified as official when first introduced to the cask
  url "https://paddle.s3.amazonaws.com/fulfillment_downloads/20398/#{version.after_comma.before_colon}/#{version.after_colon}_Unite.zip"
  appcast "https://drive.google.com/uc?export=download&id=1pPlm8G1yluV7ipcRh-2pmXP-nATWsjTK"
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
