cask "the-clock" do
  version "4.6.4,20220322"
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

  uninstall quit: "com.fabriceleyne.theclock"

  zap trash: [
    "~/Library/Application Scripts/com.fabriceleyne.theclock",
    "~/Library/Application Scripts/com.fabriceleyne.theclock.tcCalendarWidget",
    "~/Library/Application Scripts/com.fabriceleyne.theclock.tcCalendarWidgetIntent",
    "~/Library/Application Scripts/com.fabriceleyne.theclock.tcClassicClockWidget",
    "~/Library/Application Scripts/com.fabriceleyne.theclock.tcClassicClockWidgetIntent",
    "~/Library/Application Scripts/com.fabriceleyne.theclock.tcClockWidget",
    "~/Library/Application Scripts/com.fabriceleyne.theclock.tcClockWidgetIntent",
    "~/Library/Application Scripts/com.fabriceleyne.theclock.tcMiniClockWidget",
    "~/Library/Application Scripts/com.fabriceleyne.theclock.tcMiniClockWidgetIntent",
    "~/Library/Containers/com.fabriceleyne.theclock",
    "~/Library/Containers/com.fabriceleyne.theclock.tcCalendarWidget",
    "~/Library/Containers/com.fabriceleyne.theclock.tcCalendarWidgetIntent",
    "~/Library/Containers/com.fabriceleyne.theclock.tcClassicClockWidget",
    "~/Library/Containers/com.fabriceleyne.theclock.tcClassicClockWidgetIntent",
    "~/Library/Containers/com.fabriceleyne.theclock.tcClockWidget",
    "~/Library/Containers/com.fabriceleyne.theclock.tcClockWidgetIntent",
    "~/Library/Containers/com.fabriceleyne.theclock.tcMiniClockWidget",
    "~/Library/Containers/com.fabriceleyne.theclock.tcMiniClockWidgetIntent",
    "~/Library/Group Containers/3EYN7PPTPF.com.fabriceleyne.theclock",
  ]
end
