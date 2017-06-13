cask 'whatsize' do
  version '6.5.4'
  sha256 '116a45be975f37896c1f88cf6684f89f74c2b709e6c5a5201c7022e5ac14e9f8'

  url "https://www.whatsizemac.com/software/whatsize#{version.major}/whatsize.dmg"
  appcast 'http://www.id-design.com/software/whatsize/release/notes.xml',
          checkpoint: 'a3939b96017d292cb2c10d7b3a024db78f734bf47d522b548c41e2ff71b74909'
  name 'WhatSize'
  homepage 'https://whatsizemac.com/'

  app 'WhatSize.app'
end
