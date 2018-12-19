cask 'tuneinstructor' do
  version '3.7'
  sha256 '7de1475bbe5d58a0818620da02355e0cace26e79e2783a6e9081573895a2c3b1'

  url "https://www.tune-instructor.de/resources/downloads/TuneInstructor#{version}.dmg"
  name 'Tune•Instructor'
  homepage 'https://www.tune-instructor.de/com/start.html'

  depends_on macos: '>= :yosemite'

  app 'Tune•Instructor.app'
end
