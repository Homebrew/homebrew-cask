class Whatsize < Cask
  version 'latest'
  sha256 :no_check
  	
  url 'http://whatsizemac.com/software/whatsize/whatsize.dmg'
  appcast 'http://www.id-design.com/software/whatsize/release/notes.xml'
  homepage 'http://whatsizemac.com/'

  app 'WhatSize.app'
end
