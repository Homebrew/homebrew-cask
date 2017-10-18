cask 'whatsize' do
  version '6.6.2'
  sha256 '9e1c6c81ef3ca4a251f4a1313d0ec6fa353cc92bbb8160335d45411cc156033d'

  url "https://www.whatsizemac.com/software/whatsize#{version.major}/whatsize.dmg"
  appcast 'http://www.id-design.com/software/whatsize/release/notes.xml',
          checkpoint: 'a3939b96017d292cb2c10d7b3a024db78f734bf47d522b548c41e2ff71b74909'
  name 'WhatSize'
  homepage 'https://whatsizemac.com/'

  app 'WhatSize.app'
end
