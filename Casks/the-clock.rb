cask "the-clock" do
  version "4.4"
  sha256 "ca7e434d5660bd8f4cfc53fb698e8a7a9b66cc4d6b18ab24d76379020cbc99eb"

  url "https://seense.com/the_clock/updateapp/the_clock.zip"
  appcast "https://www.seense.com/the_clock/updateapp/appcast.xml"
  name "The Clock"
  desc "Clock and time zone app"
  homepage "https://seense.com/the_clock/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "The Clock.app"
end
