cask "tableplus" do
  version "3.9.1,342"
  sha256 "21d98511c92065de5b3cd2a353c333cd4356c55817a933be193492e41543e053"

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
