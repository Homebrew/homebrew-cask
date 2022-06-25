cask "winzip" do
  version "9.0.5520"
  sha256 "2b7f2b5322ffe709151b9790aaba6231ce54e423ceca5ea9433977e3079da528"

  url "https://download.winzip.com/winzipmacedition#{version.major}.dmg"
  name "WinZip"
  desc "File archiving tool"
  homepage "https://www.winzip.com/mac/en/winzip.html"

  livecheck do
    url "https://www.winzip.com/en/download/"
    regex(/href=.*?winzipmacedition[._-]?v?(\d+)\.dmg/i)
    strategy :page_match do |page, regex|
      major_version = page[regex, 1]
      next if major_version.blank?

      cask = CaskLoader.load("winzip")
      download_url = "https://download.winzip.com/winzipmacedition#{major_version}.dmg"
      Homebrew::Livecheck::Strategy::ExtractPlist.find_versions(cask: cask, url: download_url)[:matches].values
    end
  end

  app "WinZip.app"
end
