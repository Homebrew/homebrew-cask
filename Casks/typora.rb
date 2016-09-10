cask 'typora' do
  version '0.9.9.6.4'
  sha256 '5995a47e3882547eaf987f5d7a43e3a18c0a29abda1d48fc9ee7f42e0abe458b'

  url "https://www.typora.io/download/archive/typora_#{version}.zip"
  appcast 'https://www.typora.io/download/dev_update.xml',
          checkpoint: 'a856ddacf753bd32120c79adbd680c2d063e35bf8d2f95ea672d0ca6f7ab4e2b'
  name 'Typora'
  homepage 'https://typora.io'
  license :gratis

  app 'Typora.app'
end
