cask "zoho-workdrive" do
  version "2.6.47"
  sha256 :no_check

  url "https://files-accl.zohopublic.com/public/wdbin/download/46f971e4fc4a32b68ad5d7dade38a7d2",
      verified: "files-accl.zohopublic.com/"
  name "Zoho WorkDrive"
  desc "Client for the Zoho cloud storage service"
  homepage "https://www.zoho.com/workdrive/desktop-sync.html"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Zoho WorkDrive.app"
end
