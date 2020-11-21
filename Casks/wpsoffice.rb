cask "wpsoffice" do
  version "3.0.0,4835"
  sha256 "dabb7a2b789a7d942fafe463d46123679cec8379c609af4a81ff0d2d1cb7d293"

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
