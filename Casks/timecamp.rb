cask "timecamp" do
  version "1.6.2.2"
  sha256 "8d02d1ab4c649bf6acb4e82aeb6b38b5bcb382dc436eca47e68b121ae56c4e4a"

  # timecamp.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://timecamp.s3.amazonaws.com/downloadsoft/#{version}/TimeCampSetup_macOS.dmg"
  name "TimeCamp"
  homepage "https://www.timecamp.com/"

  app "TimeCamp.app"

  zap rmdir: "~/Library/Application Support/TimeCamp"
end
