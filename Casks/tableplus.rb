cask "tableplus" do
  version "3.8.0,336"
  sha256 "04b19967794ec2f35cac697ac5253f0281099db6579dc3832a39b9f760e8e918"

  # download.tableplus.com/ was verified as official when first introduced to the cask
  url "https://download.tableplus.com/macos/#{version.after_comma}/TablePlus.dmg"
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
