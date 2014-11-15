# encoding: UTF-8
cask :v1 => 'tuneinstructor' do
  version '3.4'
  sha256 '7909eeaf0b3cbe41c511f2c450a6249c9d8a311a482547cf8fc11537b11ecbd4'

  url "http://www.tune-instructor.de/_data/TuneInstructor#{version}b.dmg"
  homepage 'http://www.tune-instructor.de/com/start.html'
  license :unknown

  app 'Tune•Instructor.app'
end
