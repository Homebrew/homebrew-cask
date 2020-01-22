cask 'tuneinstructor' do
  version '3.7v5,17467'
  sha256 'bc650838981b66f556209ae064c61edcaee020e7d5c7ef4a0299b8aadabbfb14'

  url "https://www.tune-instructor.de/resources/downloads/TuneInstructor#{version.before_comma}.dmg"
  appcast 'https://www.tune-instructor.de/de/download.html'
  name 'Tune•Instructor'
  homepage 'https://www.tune-instructor.de/com/start.html'

  depends_on macos: '>= :catalina'

  app 'Tune•Instructor.app'
end
