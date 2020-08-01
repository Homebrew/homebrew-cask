cask "tableplus" do
  version "3.7.0,330"
  sha256 "306cc99d8815d656954ff8745f17a567a7d9dd7ccb01928c37a50d0ee067ffab"

  # tableplus-osx-builds.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://tableplus-osx-builds.s3.amazonaws.com/#{version.after_comma}/TablePlus.dmg"
  appcast "https://tableplus.io/osx/version.xml",
          must_contain: version.after_comma
  name "TablePlus"
  homepage "https://tableplus.io/"

  auto_updates true

  app "TablePlus.app"

  zap trash: [
    "~/Library/Application Support/com.tinyapp.TablePlus",
    "~/Library/Caches/com.tinyapp.TablePlus",
    "~/Library/Cookies/com.tinyapp.TablePlus.binarycookies",
    "~/Library/Preferences/com.tinyapp.TablePlus.plist",
    "~/Library/Saved Application State/com.tinyapp.TablePlus.savedState",
  ]
end
