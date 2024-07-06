cask "zoho-workdrive" do
  version "2.7.39"
  sha256 "59eb1d050fd5dea1e05c6cb422c1f8ab2fccc3ce68bd404362425759584f704e"

  url "https://files-accl.zohopublic.com/public/wdbin/download/46f971e4fc4a32b68ad5d7dade38a7d2",
      verified: "files-accl.zohopublic.com/"
  name "Zoho WorkDrive"
  desc "Client for the Zoho cloud storage service"
  homepage "https://www.zoho.com/workdrive/desktop-sync.html"

  livecheck do
    url "https://teamsync.zoho.com/wd/checksum"
    strategy :json do |json|
      checksum_match = json["mac"]
      next if checksum_match.blank?

      cask = CaskLoader.load(__FILE__)
      next cask.version if cask.sha256 == checksum_match

      url = cask.url.to_s
      Homebrew::Livecheck::Strategy::ExtractPlist.find_versions(cask:, url:)[:matches].values
    end
  end

  depends_on macos: ">= :mojave"

  app "Zoho WorkDrive.app"

  zap trash: [
    "~/.zohoworkdrive",
    "~/Library/Application Scripts/com.zohosync.workdrive",
    "~/Library/Application Support/Zoho WorkDrive",
    "~/Library/Containers/com.zohosync.workdrive",
    "~/Library/Preferences/org.zoho.ZohoWorkDrive.plist",
  ]

  caveats do
    requires_rosetta
  end
end
