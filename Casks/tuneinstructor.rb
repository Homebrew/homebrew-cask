cask "tuneinstructor" do
  version "3.7v5,17467"
  sha256 "bbd0255f809da259b6c4a9d7f7fc27de2bceb5dc7caca32adc61769d9d98f9de"

  url "https://www.tune-instructor.de/resources/downloads/TuneInstructor#{version.csv.first}.zip"
  appcast "https://www.tune-instructor.de/de/download.html"
  name "Tune•Instructor"
  homepage "https://www.tune-instructor.de/com/start.html"

  depends_on macos: ">= :catalina"

  app "Tune•Instructor.app"
end
