cask "timemator" do
  version "2.7.2"
  sha256 "323d9af3d7a7a6288a1c0fbbef078c84b952a4a76f90742f43596b9bcc010d51"

  # catforce-timemator.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://catforce-timemator.s3.amazonaws.com/releases/Timemator.dmg"
  appcast "https://catforce-timemator.s3.amazonaws.com/releases/appcast.xml"
  name "Timemator"
  homepage "https://timemator.com/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Timemator.app"
end
