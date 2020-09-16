cask "xee" do
  version "3.5.3,45:1504018134"
  sha256 "756719157ae7d9cd3a0153ca80b48b71a239691d3ff8aa0061fd529a825d7926"

  # devmate.com/cx.c3.Xee3/ was verified as official when first introduced to the cask
  url "https://dl.devmate.com/cx.c3.Xee3/#{version.after_comma.before_colon}/#{version.after_colon}/Xee-#{version.after_comma.before_colon}.zip"
  appcast "https://updates.devmate.com/cx.c3.Xee3.xml"
  name "Xee³"
  desc "Image viewer and file browser"
  homepage "https://theunarchiver.com/xee"

  auto_updates true

  app "Xee³.app"

  zap trash: [
    "~/Library/Application Support/Xee³",
    "~/Library/Caches/cx.c3.Xee3",
    "~/Library/Cookies/cx.c3.Xee3.binarycookies",
    "~/Library/Preferences/cx.c3.Xee3.plist",
  ]
end
