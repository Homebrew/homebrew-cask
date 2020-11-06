cask "the-clock" do
  version "4.3"
  sha256 "df14cb8b9e899794b2c7317b7d1cfc9ff2a0db63f1450a3b9dfacd4006d377c8"

  url "https://seense.com/the_clock/updateapp/the_clock.zip"
  appcast "https://www.seense.com/the_clock/updateapp/appcast.xml"
  name "The Clock"
  desc "Clock and time zone app"
  homepage "https://seense.com/the_clock/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "The Clock.app"
end
