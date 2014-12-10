# encoding: UTF-8
cask :v1 => 'tuneinstructor' do
  version '3.4'

  if MacOS.release <= :snow_leopard
    sha256 '99e9dbc9657921246ce39b4d3b7521f8aa31c205c4e18e552a0f816e7e2e52aa'
    url "http://www.tune-instructor.de/_data/TuneInstructor#{version}a.dmg"
  else
    sha256 '2acf8252e78edbe4594136bad83f035ab48e78db1f4c2b2d8e047d3e70c90c12'
  url "http://www.tune-instructor.de/_data/TuneInstructor#{version}b.dmg"
  end

  homepage 'http://www.tune-instructor.de/com/start.html'
  license :commercial

  app 'Tune•Instructor.app'
end
