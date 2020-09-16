cask "the-unarchiver" do
  version "4.2.2,129:1590582775"
  sha256 "0c586d9f95d23cead58c7b314f74b6158f7917673e1163034267030d4a65d32f"

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
