cask "tableplus" do
  version "3.9.1,342.2"
  sha256 "6d6f2e723aa4431dca07c29406bf958a90d9a942be249a46b19121869c0ef86e"

  url "https://download.tableplus.com/macos/#{version.after_comma}/TablePlus.dmg"
  appcast "https://tableplus.com/osx/version.xml",
          must_contain: version.after_comma
  name "TablePlus"
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
