cask "timemator" do
  version "2.7.2,113"
  sha256 :no_check

  # catforce-timemator.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://catforce-timemator.s3.amazonaws.com/releases/Timemator.dmg"
  appcast "https://catforce-timemator.s3.amazonaws.com/releases/appcast.xml"
  name "Timemator"
  homepage "https://timemator.com/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Timemator.app"
end
