cask 'whatsize' do
  version '6.5.3'
  sha256 'd8cdb22f3012ac443ac07b40e79cf1bd330fa6be685857a28b162384109a70a6'

  url "https://www.whatsizemac.com/software/whatsize#{version.major}/whatsize.dmg"
  appcast 'http://www.id-design.com/software/whatsize/release/notes.xml',
          checkpoint: 'a3939b96017d292cb2c10d7b3a024db78f734bf47d522b548c41e2ff71b74909'
  name 'WhatSize'
  homepage 'https://whatsizemac.com/'

  app 'WhatSize.app'
end
