cask 'tuneinstructor' do
  version '3.6'
  sha256 '04921ad3d8d458725baefb98d7c9a192d7e41e7ba9db3469b44dc749c292893a'

  url "https://www.tune-instructor.de/resources/downloads/TuneInstructor#{version}.dmg"
  name 'Tune•Instructor'
  homepage 'https://www.tune-instructor.de/com/start.html'

  depends_on macos: '>= :yosemite'

  app 'Tune•Instructor.app'
end
