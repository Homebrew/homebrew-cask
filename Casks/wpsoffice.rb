cask "wpsoffice" do
  version "3.0.0,4840"
  sha256 "eebee6b80d93e7505f8a0301c96d44a2029a61955220d573fb8c420336eace12"

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
