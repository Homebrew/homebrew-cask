cask "timemator" do
  version "2.6"
  sha256 "301e1f40382624d6393fd4459645c4a69fe8c5c8a99308b3647a69b5e3b31493"

  # catforce-timemator.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://catforce-timemator.s3.amazonaws.com/releases/Timemator.dmg"
  appcast "https://catforce-timemator.s3.amazonaws.com/releases/appcast.xml"
  name "Timemator"
  homepage "https://timemator.com/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Timemator.app"
end
