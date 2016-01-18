cask 'tuneinstructor' do
  version '3.6'
  sha256 'b5bc95a37d86af57ac607949e9eeeaa878d62031199438e6f70ebfbc485218c0'

  url "http://www.tune-instructor.de/resources/downloads/TuneInstructor#{version}.dmg"
  name 'Tune•Instructor'
  homepage 'http://www.tune-instructor.de/com/start.html'
  license :commercial

  depends_on macos: '>= :yosemite'

  app 'Tune•Instructor.app'
end
