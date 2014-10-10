class Vienna < Cask
  version '3.0.0_rc7'
  sha256 '5a7b4b20883beb8e99ec331c09892a27b3f1340d90ddb6226fa11bee24643677'

  url "https://downloads.sourceforge.net/vienna-rss/Vienna#{version}.tgz"
  appcast 'http://vienna-rss.org/changelog_beta.xml'
  homepage 'http://www.vienna-rss.org'
  license :oss

  app 'Vienna.app'
end
