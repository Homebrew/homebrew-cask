cask "timecamp" do
  version "1.6.1.8"
  sha256 "9e98b80020e75de3d5b4bb2c66b33777cd75f42f5afcdab9922961bad1fa42e9"

  # timecamp.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://timecamp.s3.amazonaws.com/downloadsoft/#{version}/TimeCampSetup_macOS.dmg"
  name "TimeCamp"
  homepage "https://www.timecamp.com/"

  app "TimeCamp.app"

  zap rmdir: "~/Library/Application Support/TimeCamp"
end
