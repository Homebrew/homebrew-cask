cask "wpsoffice" do
  version "3.1.6,6275"
  sha256 "7ee681d6324a1a4d09b8c352818343db02ab7b02631880ea8bba6716f3be7f13"

  url "https://wdl1.pcfg.cache.wpscdn.com/wpsdl/macwpsoffice/download/#{version.csv.first}.#{version.csv.second}/WPSOffice_#{version.csv.first}(#{version.csv.second}).dmg",
      verified: "wdl1.pcfg.cache.wpscdn.com/"
  name "WPS Office"
  desc "All-in-one office suite"
  homepage "https://www.wps.com/mac/"

  livecheck do
    skip "No version information available"
  end

  depends_on macos: ">= :sierra"

  app "wpsoffice.app"

  uninstall quit: "com.kingsoft.wpsoffice.mac.global"

  zap trash: [
    "~/Library/Application Scripts/com.kingsoft.wpsoffice.mac.global",
    "~/Library/Containers/com.kingsoft.wpsoffice.mac.global",
  ]
end
