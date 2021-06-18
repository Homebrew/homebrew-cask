cask "wpsoffice" do
  version "3.1.1,5096"
  sha256 "ffa961f9e791ebd9576dcc9e181e60213fa97a53d4c1c5488d5befa2046cedf3"

  url "https://wdl1.pcfg.cache.wpscdn.com/wpsdl/macwpsoffice/download/#{version.before_comma}.#{version.after_comma}/WPSOffice_#{version.before_comma}(#{version.after_comma}).dmg",
      verified: "wdl1.pcfg.cache.wpscdn.com/"
  name "WPS Office"
  desc "All-in-one office suite"
  homepage "https://www.wps.com/mac/"

  depends_on macos: ">= :sierra"

  app "wpsoffice.app"

  uninstall quit: "com.kingsoft.wpsoffice.mac.global"

  zap trash: [
    "~/Library/Application Scripts/com.kingsoft.wpsoffice.mac.global",
    "~/Library/Containers/com.kingsoft.wpsoffice.mac.global",
  ]
end
