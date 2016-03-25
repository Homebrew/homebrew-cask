cask 'typora' do
  version '0.9.8.8'
  sha256 '701ce8780c2b4ff535dca197ed852417664b7cdf4062670c4f03dcdd9944b345'

  url "https://www.typora.io/download/typora_#{version}.zip"
  appcast 'https://www.typora.io/download/dev_update.xml',
          checkpoint: 'bf9ae87f097daf2ccf774d7b732ab3116baa759c088b35609004ae54a770bde0'
  name 'Typora'
  homepage 'http://typora.io'
  license :gratis

  app 'Typora.app'
end
