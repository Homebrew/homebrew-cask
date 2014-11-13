cask :v1 => 'vienna' do
  version '3.0.0_rc9'
  sha256 '5d6c85ab3e59d581efe37aa0e7a035ebeae1688a4d7e283bb9eed72c8c2bb606'

  url "https://downloads.sourceforge.net/vienna-rss/Vienna#{version}.tgz"
  appcast 'http://vienna-rss.org/changelog_beta.xml',
          :sha256 => '20ae887cd3d0f8b97cd133cd32454fdb8796e72f2de2a0e12fe288c7358f7e31'
  homepage 'http://www.vienna-rss.org'
  license :oss

  app 'Vienna.app'
end
