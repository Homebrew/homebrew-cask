cask "the-unarchiver" do
  version "4.2.4,131:1605625663"
  sha256 "75524096a35fb4dcc8e9f16b162d52ee6c4e8101878c18b5a02c3e37790e532c"

  # devmate.com/com.macpaw.site.theunarchiver/ was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.macpaw.site.theunarchiver/#{version.after_comma.before_colon}/#{version.after_colon}/TheUnarchiver-#{version.after_comma.before_colon}.zip"
  appcast "https://updates.devmate.com/com.macpaw.site.theunarchiver.xml"
  name "The Unarchiver"
  desc "Unpacks archive files"
  homepage "https://theunarchiver.com/"

  auto_updates true

  app "The Unarchiver.app"

  zap trash: [
    "~/Library/Caches/cx.c3.theunarchiver",
    "~/Library/Cookies/cx.c3.theunarchiver.binarycookies",
    "~/Library/Preferences/cx.c3.theunarchiver.plist",
    "~/Library/Saved Application State/cx.c3.theunarchiver.savedState",
  ]
end
