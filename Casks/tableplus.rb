cask "tableplus" do
  version "3.12.4,360"
  sha256 "0c679a1e69a343795b56708ce439bb1805cb31018db6181f139c1a22a41b0996"

  url "https://download.tableplus.com/macos/#{version.after_comma}/TablePlus.dmg"
  appcast "https://tableplus.com/osx/version.xml",
          must_contain: version.after_comma
  name "TablePlus"
  desc "Native GUI tool for relational databases"
  homepage "https://tableplus.com/"

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
