cask "the-clock" do
  version "4.5.1,20210115"
  sha256 :no_check

  url "https://seense.com/the_clock/updateapp/the_clock.zip"
  name "The Clock"
  desc "Clock and time zone app"
  homepage "https://seense.com/the_clock/"

  livecheck do
    url "https://www.seense.com/the_clock/updateapp/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "The Clock.app"
end
