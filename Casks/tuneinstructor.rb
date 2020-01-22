cask 'tuneinstructor' do
  version '3.7v5,17467'
  sha256 '353572f3682a04e4b1d68e29600125671de5217371b0fc73148c23f6c12ac07b'

  url "https://www.tune-instructor.de/resources/downloads/TuneInstructor#{version.before_comma}.dmg"
  appcast 'https://www.tune-instructor.de/de/download.html'
  name 'Tune•Instructor'
  homepage 'https://www.tune-instructor.de/com/start.html'

  depends_on macos: '>= :sierra'

  app 'Tune•Instructor.app'
end
