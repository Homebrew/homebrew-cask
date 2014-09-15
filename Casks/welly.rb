class Welly < Cask
  version '2.7+'
  sha256 'cb24a26432d8927b1159a1865602c3f30b5190f628167c954e4d6cc723cfcb0f'

  url 'https://welly.googlecode.com/files/Welly.v2.7.fix.zip'
  appcast 'http://welly.googlecode.com/svn/wiki/WellyUpdate.xml'
  homepage 'https://code.google.com/p/welly/'

  app 'Welly.app'
end
