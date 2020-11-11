cask "timeular" do
  version "3.6.0"
  sha256 "40d8049ac885e46f594d0d08166474e629f4ea5b7f0a049ab78e1bc1df2fb9eb"

  # timeular-desktop-packages.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://timeular-desktop-packages.s3.amazonaws.com/mac/production/Timeular-#{version}.dmg"
  appcast "https://timeular-desktop-packages.s3.amazonaws.com/mac/production/latest-mac.yml"
  name "Timeular"
  homepage "https://timeular.com/"

  auto_updates true

  app "Timeular.app"
end
