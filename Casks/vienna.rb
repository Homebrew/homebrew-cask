class Vienna < Cask
  version '3.0.0_rc8'
  sha256 'e707769442e3064234bbd0450a22d28de0fa87ae194b1e6c5a423e555e58a5d1'

  url "https://downloads.sourceforge.net/vienna-rss/Vienna#{version}.tgz"
  appcast 'http://vienna-rss.org/changelog_beta.xml'
  homepage 'http://www.vienna-rss.org'
  license :oss

  app 'Vienna.app'
end
