cask "timemator" do
  version "2.8.2,130"
  sha256 :no_check

  url "https://catforce-timemator.s3.amazonaws.com/releases/Timemator.dmg",
      verified: "catforce-timemator.s3.amazonaws.com/"
  name "Timemator"
  desc "Automatic time-tracking application"
  homepage "https://timemator.com/"

  livecheck do
    url "https://catforce-timemator.s3.amazonaws.com/releases/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Timemator.app"
end
