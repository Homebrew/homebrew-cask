class Vienna < Cask
  version '3.0.0_rc8'
  sha256 'e707769442e3064234bbd0450a22d28de0fa87ae194b1e6c5a423e555e58a5d1'

  url "https://downloads.sourceforge.net/vienna-rss/Vienna#{version}.tgz"
  appcast 'http://vienna-rss.org/changelog_beta.xml',
          :sha256 => '20ae887cd3d0f8b97cd133cd32454fdb8796e72f2de2a0e12fe288c7358f7e31'
  homepage 'http://www.vienna-rss.org'
  license :oss

  app 'Vienna.app'
end
