cask 'typora' do
  version '0.9.9.7.8'
  sha256 '878835b97dc53f51b8bd0c934e9c2511eafc6a607e1e3b7792c388620430690b'

  url "https://www.typora.io/download/typora_#{version}.zip"
  appcast 'https://www.typora.io/download/dev_update.xml',
          checkpoint: '38c50230fe61d7093ae1fd8b1763db4f7df37a1269dd5b29ef7257a9bd07e0fd'
  name 'Typora'
  homepage 'https://typora.io'
  license :gratis

  app 'Typora.app'
end
