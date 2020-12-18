cask "tableplus" do
  version "3.12.0,354"
  sha256 "2440273109ea5b186b4a7b3b22b8809cfdc985019cdb792908787d8a8b460e1a"

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
