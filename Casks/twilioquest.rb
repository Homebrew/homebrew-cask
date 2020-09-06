cask "twilioquest" do
  version ":latest"
  sha256 "6d58c8a88b1bf9b62bcbd6cf48f547721485eb979ca5e3069d81e152a4c553eb"

  # firebasestorage.googleapis.com/v0/b/twilioquest-prod.appspot.com was verified as official when first introduced to the cask
  url "https://firebasestorage.googleapis.com/v0/b/twilioquest-prod.appspot.com/o/launchers%2F8%2Ftwilioquest-mac.zip?alt=media&token=94e06ace-3770-4c14-9aa7-5d77366ac7ec"
  name "TwilioQuest"
  desc "Learn to code and lead your crew on a mission to save The Cloud in a 16bit game"
  homepage "https://www.twilio.com/quest"

  app "TwilioQuest.app"

  uninstall pkgutil: [
    "com.electron.twilioquest",
    "com.electron.twilioquest.helper",
  ]

  zap trash: [
    "~/Library/Application Support/TwilioQuest",
    "~/Library/Preferences/com.electron.twilioquest.plist",
    "~/Library/Saved Application State/com.electron.twilioquest.savedState",
  ]
end
