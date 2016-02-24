cask 'typora' do
  version '0.9.8.6'
  sha256 '94ab9b5656af6dc93b22d19d31c6d16e74e081108d48e7c868b095bd01753c20'

  url "https://www.typora.io/download/typora_#{version}.zip"
  appcast 'https://www.typora.io/download/dev_update.xml',
          checkpoint: '7090287277b4a81713299d470bbfc1bb34f3b8985067b4bb981f50c44de0d178'
  name 'Typora'
  homepage 'http://typora.io'
  license :gratis

  app 'Typora.app'
end
