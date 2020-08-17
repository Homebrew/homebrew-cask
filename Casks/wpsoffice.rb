cask "wpsoffice" do
  version "2.5.0,4141"
  sha256 "abd8a54aff7ea06a068fa0fcc2789b422d898483d897bebd48d3b5c01efb169c"

  # wdl1.pcfg.cache.wpscdn.com/ was verified as official when first introduced to the cask
  url "https://wdl1.pcfg.cache.wpscdn.com/wpsdl/macwpsoffice/download/#{version.before_comma}.#{version.after_comma}/WPSOffice_#{version.before_comma}(#{version.after_comma}).dmg"
  name "WPS Office"
  homepage "https://www.wps.com/mac/"

  depends_on macos: ">= :sierra"

  app "wpsoffice.app"

  uninstall quit: "com.kingsoft.wpsoffice.mac.global"

  zap trash: [
    "~/Library/Application Scripts/com.kingsoft.wpsoffice.mac.global",
    "~/Library/Containers/com.kingsoft.wpsoffice.mac.global",
  ]
end
