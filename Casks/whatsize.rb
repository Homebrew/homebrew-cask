cask 'whatsize' do
  version '6.5.2'
  sha256 '14abf2c48e321c63d21eb5e9adcf9f2d140859b3559d3120ffcd01df582b162e'

  url 'https://www.whatsizemac.com/software/whatsize6/whatsize.dmg'
  appcast 'http://www.id-design.com/software/whatsize/release/notes.xml',
          checkpoint: 'a3939b96017d292cb2c10d7b3a024db78f734bf47d522b548c41e2ff71b74909'
  name 'WhatSize'
  homepage 'http://whatsizemac.com/'
  license :commercial

  app 'WhatSize.app'
end
