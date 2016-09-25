cask 'tuneinstructor' do
  version '3.6'
  sha256 'f493a9361d9e14361cc38e684f4f9ab3dc772e58810120a7de518f64512bd9de'

  url 'https://www.tune-instructor.de/resources/downloads/TuneInstructor.zip'
  name 'Tune•Instructor'
  homepage 'https://www.tune-instructor.de/com/start.html'
  license :commercial

  depends_on macos: '>= :yosemite'

  app 'Tune•Instructor.app'
end
