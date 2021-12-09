cask "timemator" do
  version "2.8.5,137"
  sha256 "768be009497a117018245d5d4c3854e28c14d893dbc8f060d2c97f0aed6ad4ef"

  url "https://s3-eu-west-1.amazonaws.com/catforce-timemator/releases/Timemator_#{version.csv.first}.dmg",
      verified: "s3-eu-west-1.amazonaws.com/catforce-timemator/"
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
