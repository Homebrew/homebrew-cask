cask "tuneinstructor" do
  version "3.7v5"
  sha256 "bbd0255f809da259b6c4a9d7f7fc27de2bceb5dc7caca32adc61769d9d98f9de"

  url "https://www.tune-instructor.de/resources/downloads/TuneInstructor#{version.csv.first}.zip"
  name "Tune•Instructor"
  desc "Menu bar control for Apple Music"
  homepage "https://www.tune-instructor.de/com/start.html"

  livecheck do
    url "https://www.tune-instructor.de/de/download.html"
    regex(/href=.*?TuneInstructor[._-]?v?(\d+(?:[.v]\d+)+)\.zip/i)
  end

  depends_on macos: ">= :catalina"

  app "Tune•Instructor.app"

  zap trash: [
    "~/Library/Application Scripts/*.de.tune-instructor.Tune-Instructor",
    "~/Library/Caches/de.tune-instructor.Tune-Instructor",
    "~/Library/Group Containers/*.de.tune-instructor.Tune-Instructor",
    "~/Library/HTTPStorages/de.tune-instructor.Tune-Instructor",
    "~/Library/HTTPStorages/de.tune-instructor.Tune-Instructor.binarycookies",
  ]

  caveats do
    requires_rosetta
  end
end
