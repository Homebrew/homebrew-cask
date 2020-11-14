cask "timemator" do
  version "2.7.1"
  sha256 "0121a926c8b9eb9db3826e2097b61fc4d77c5a80ede6797c02d4c0608f16ce0a"

  # catforce-timemator.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://catforce-timemator.s3.amazonaws.com/releases/Timemator.dmg"
  appcast "https://catforce-timemator.s3.amazonaws.com/releases/appcast.xml"
  name "Timemator"
  homepage "https://timemator.com/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Timemator.app"
end
