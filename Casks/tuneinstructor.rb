cask 'tuneinstructor' do
  version '3.6'
  sha256 '9f68e5d1d31a7a7502f84e21f1d26cd8fd3a8eba7708f07386aa641551592d14'

  url "https://www.tune-instructor.de/resources/downloads/TuneInstructor#{version}.dmg"
  name 'Tune•Instructor'
  homepage 'https://www.tune-instructor.de/com/start.html'

  depends_on macos: '>= :yosemite'

  app 'Tune•Instructor.app'
end
