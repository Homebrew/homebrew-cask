cask 'typora' do
  version '0.9.9.2.1'
  sha256 '126eb546437987e57a9f5a7d5901be26e50554cf195f383b080bc0facbdfd98f'

  url "https://www.typora.io/download/typora_#{version}.zip"
  appcast 'https://www.typora.io/download/dev_update.xml',
          checkpoint: 'cee44a4f873585f26e13d859a69e234e9a2bace830797143c1078ef03f6da2e2'
  name 'Typora'
  homepage 'http://typora.io'
  license :gratis

  app 'Typora.app'
end
