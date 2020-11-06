cask "timemator" do
  version "2.7"
  sha256 "ca788bd7321d71b503e8b2fbe75e8c98ed141e77f462c2b5e5f95ea214189b27"

  # catforce-timemator.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://catforce-timemator.s3.amazonaws.com/releases/Timemator.dmg"
  appcast "https://catforce-timemator.s3.amazonaws.com/releases/appcast.xml"
  name "Timemator"
  homepage "https://timemator.com/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Timemator.app"
end
