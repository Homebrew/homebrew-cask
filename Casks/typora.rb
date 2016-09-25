cask 'typora' do
  version :latest
  sha256 :no_check

  url "https://www.typora.io/download/typora_#{version}.zip"
  appcast 'https://www.typora.io/download/dev_update.xml',
          checkpoint: 'a856ddacf753bd32120c79adbd680c2d063e35bf8d2f95ea672d0ca6f7ab4e2b'
  name 'Typora'
  homepage 'https://typora.io'
  license :gratis

  app 'Typora.app'
end
