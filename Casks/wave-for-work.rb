cask "wave-for-work" do
  version "0.3.7"
  sha256 :no_check

  url "https://bitbucket.org/genki_instruments/software_releases/downloads/Wave_for_Work_mac.zip",
      verified: "https://bitbucket.org/genki_instruments/software_releases/"
  name "Wave for work"
  desc "Work smarter, not harder"
  homepage "https://genkiinstruments.com/products/wave-for-work"

  livecheck do
    url "https://bitbucket.org/genki_instruments/software_releases/downloads/appcast_wfw.xml"
    strategy :page_match
    regex(/sparkle:shortVersionString="(\d+(?:\.\d+)*)" sparkle:os="macos"/i)
  end

  pkg "Install_Wave_for_Work.pkg"

  uninstall pkgutil: [
    "com.genkiinstruments.waveforwork",
  ]

  zap trash: [
    "~/Library/Preferences/com.genkiinstruments.waveforwork.plist",
    "~/Library/Wave for Work",
  ]
end
