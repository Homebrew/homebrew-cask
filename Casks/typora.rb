cask 'typora' do
  version '0.9.8.7.2'
  sha256 '0a310be6ea52c89ca976460841bf86a8a643bf1d74b146c851c12542328e08a2'

  url "https://www.typora.io/download/typora_#{version}.zip"
  appcast 'https://www.typora.io/download/dev_update.xml',
          checkpoint: '501e7efa2216e80e2b2e342736a8a1361b2087039ed09a7cd5d31772b358e1a1'
  name 'Typora'
  homepage 'http://typora.io'
  license :gratis

  app 'Typora.app'
end
