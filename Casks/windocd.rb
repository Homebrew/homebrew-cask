cask "windocd" do
  version "1.8"
  sha256 "758d7f0dcd99e8d6c0791a2e426dcb69dda9f19d966728d5af7aaeda315a44ca"

  # download.moapp.software/ was verified as official when first introduced to the cask
  url "https://download.moapp.software/windOCD.zip"
  appcast "https://sparkle.moapp.software/windocd.xml"
  name "windOCD"
  homepage "https://windocd.myownapp.com/"

  depends_on macos: ">= :mojave"

  app "windOCD.app"

  zap trash: [
    "~/Library/Application Support/windOCD",
    "~/Library/Caches/com.myownapp.windOCD",
    "~/Library/Preferences/com.myownapp.windOCD.plist",
  ]
end
