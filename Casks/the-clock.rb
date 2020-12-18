cask "the-clock" do
  version "4.4,20201111"
  sha256 :no_check

  url "https://seense.com/the_clock/updateapp/the_clock.zip"
  appcast "https://www.seense.com/the_clock/updateapp/appcast.xml"
  name "The Clock"
  desc "Clock and time zone app"
  homepage "https://seense.com/the_clock/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "The Clock.app"
end
