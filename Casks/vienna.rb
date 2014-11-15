cask :v1 => 'vienna' do
  version '3.0.0'
  sha256 'e61f44b7be0f1f49cf6c735d8e03071141ddaca1d5ff65db29f786ee3dfeded3'

  url "https://downloads.sourceforge.net/vienna-rss/Vienna#{version}.tgz"
  appcast 'http://vienna-rss.org/changelog_beta.xml',
          :sha256 => '20ae887cd3d0f8b97cd133cd32454fdb8796e72f2de2a0e12fe288c7358f7e31'
  homepage 'http://www.vienna-rss.org'
  license :oss

  app 'Vienna.app'
end
