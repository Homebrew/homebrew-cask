class Vienna < Cask
  version '3.0.0_rc1'
  sha256 'bb0106e120082854a116e71448c38457aec03fa0aec518642c3e0428e9a69f29'

  url 'https://downloads.sourceforge.net/vienna-rss/Vienna3.0.0_rc1.tgz'
  appcast 'http://vienna-rss.org/changelog_beta.xml'
  homepage 'http://www.vienna-rss.org'

  app 'Vienna.app'
end
