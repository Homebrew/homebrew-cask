cask "timecamp" do
  version "1.6.1.6"
  sha256 "3d0805892011cdbf959f6fb37ab15a3be0940d354817e73b98b6bd7ad6314077"

  # timecamp.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://timecamp.s3.amazonaws.com/downloadsoft/#{version}/TimeCampSetup_macOS.dmg"
  name "TimeCamp"
  homepage "https://www.timecamp.com/"

  app "TimeCamp.app"

  zap rmdir: "~/Library/Application Support/TimeCamp"
end
