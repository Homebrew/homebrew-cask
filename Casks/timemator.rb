cask "timemator" do
  version "2.7.2,113"
  sha256 :no_check

  url "https://catforce-timemator.s3.amazonaws.com/releases/Timemator.dmg",
      verified: "catforce-timemator.s3.amazonaws.com/"
  appcast "https://catforce-timemator.s3.amazonaws.com/releases/appcast.xml"
  name "Timemator"
  homepage "https://timemator.com/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Timemator.app"
end
