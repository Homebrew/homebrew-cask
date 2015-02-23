cask :v1 => 'trailer' do
  version '1.2.1'
  sha256 'fbcd88fb94c2e7fa52ff17299106aed0b6cafc9b13aea38e24443d106baab119'

  url "http://ptsochantaris.github.io/trailer/trailer#{version.gsub('.','')}.zip"
  appcast 'http://ptsochantaris.github.io/trailer/appcast.xml',
          :sha256 => 'a85ed2eec975c1756989aea7dfa5ceed035d635d903911ba2e8ac2332a856b3b'
  name 'Trailer'
  homepage 'http://ptsochantaris.github.io/trailer/'
  license :mit

  app 'Trailer.app'
end
