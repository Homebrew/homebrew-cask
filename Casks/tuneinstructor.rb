cask 'tuneinstructor' do
  version '3.7v5,17467'
  sha256 '71e03619dfe41e38a1fe34fc320a6ecb89bc68b54febd78c229c86255b0d1726'

  url "https://www.tune-instructor.de/resources/downloads/TuneInstructor#{version.before_comma}.dmg"
  appcast 'https://www.tune-instructor.de/de/download.html'
  name 'Tune•Instructor'
  homepage 'https://www.tune-instructor.de/com/start.html'

  depends_on macos: '>= :catalina'

  app 'Tune•Instructor.app'
end
