cask 'tuneinstructor' do
  version '3.6'
  sha256 '7354d7423d19d75aa590f338596fc17da8d1c9f341c55bd7da592d5aa1b18a8e'

  url "http://www.tune-instructor.de/resources/downloads/TuneInstructor#{version}.dmg"
  name 'Tune•Instructor'
  homepage 'http://www.tune-instructor.de/com/start.html'
  license :commercial

  depends_on macos: '>= :yosemite'

  app 'Tune•Instructor.app'
end
