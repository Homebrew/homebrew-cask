cask "timecamp" do
  version "1.6.1.0"
  sha256 "b2bd7204d504f46beee90c0444d68777eb1db292de0bafd248dcb0a37cb09220"

  # timecamp.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://timecamp.s3.amazonaws.com/downloadsoft/#{version}/TimeCampSetup_macOS.dmg"
  name "TimeCamp"
  homepage "https://www.timecamp.com/"

  app "TimeCamp.app"

  zap rmdir: "~/Library/Application Support/TimeCamp"
end
