class Wings3d < Cask
  version '1.5.3'
  sha256 'ec1bc0302fc7a12c0e5f06162673782943ac4394c2a942a6111b3f321e8be6d5'

  url 'http://downloads.sourceforge.net/sourceforge/wings/wings-1.5.3-macosx.dmg'
  homepage 'http://www.wings3d.com/'

  app 'Wings3D 1.5.3.app', :target => 'Wings3D.app'
end
