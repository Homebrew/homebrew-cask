cask "wpsoffice" do
  version "2.7.0,4476"
  sha256 "df42bf0a41794da5a85b8a342e519e55671a594f6813511642200ca32d9bcac7"

  # wdl1.pcfg.cache.wpscdn.com/ was verified as official when first introduced to the cask
  url "https://wdl1.pcfg.cache.wpscdn.com/wpsdl/macwpsoffice/download/#{version.before_comma}.#{version.after_comma}/WPSOffice_#{version.before_comma}(#{version.after_comma}).dmg"
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
