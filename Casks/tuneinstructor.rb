cask 'tuneinstructor' do
  version '3.7'
  sha256 '17dd59a1be9663ec0d8cab4903e820ba8f153132bac4ff09feedd655470fce5c'

  url "https://www.tune-instructor.de/resources/downloads/TuneInstructor#{version}.dmg"
  name 'Tune•Instructor'
  homepage 'https://www.tune-instructor.de/com/start.html'

  depends_on macos: '>= :yosemite'

  app 'Tune•Instructor.app'
end
