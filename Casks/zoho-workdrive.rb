cask "zoho-workdrive" do
  version "2.6.4"
  sha256 :no_check

  # files-accl.zohopublic.com/ was verified as official when first introduced to the cask
  url "https://files-accl.zohopublic.com/public/wdbin/download/46f971e4fc4a32b68ad5d7dade38a7d2"
  name "Zoho WorkDrive"
  homepage "https://www.zoho.com/workdrive/desktop-sync.html"

  app "Zoho WorkDrive.app"
end
