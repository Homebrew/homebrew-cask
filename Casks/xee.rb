cask :v1 => 'xee' do
  version '3.5.1'
  sha256 '09d31018db36338049686f6466b12688f16247b4483188f4a396e988b7d6bedd'

  url "http://xee.c3.cx/downloads/Xee#{version}.dmg"
  name 'Xee³'
  homepage 'http://xee.c3.cx/'
  license :commercial

  app 'Xee³.app'
end
