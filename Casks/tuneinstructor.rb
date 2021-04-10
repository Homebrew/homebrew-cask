cask "tuneinstructor" do
  version "3.7v5,17467"
  sha256 "bbd0255f809da259b6c4a9d7f7fc27de2bceb5dc7caca32adc61769d9d98f9de"

  url "https://www.tune-instructor.de/resources/downloads/TuneInstructor#{version.before_comma}.zip"
  name "Tune•Instructor"
  homepage "https://www.tune-instructor.de/com/start.html"

  livecheck do
    url "https://www.tune-instructor.de/de/download.html"
    strategy :page_match
    regex(%r{href=.*?/TuneInstructor(\d+(?:\.\d+)*)\.zip}i)
  end

  depends_on macos: ">= :catalina"

  app "Tune•Instructor.app"
end
