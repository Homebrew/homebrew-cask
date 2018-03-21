cask 'unlox' do
  version '2.0.2.1'
  sha256 '20a5fa4b1120f23b99a8ee3171d06c6a3e75797a40216e7e480f860ff19d3da0'

  url 'https://unlox.it/download/'
  appcast 'https://unlox.it/download/update.php',
          checkpoint: '53e8b7889240d0ee4114abc3e4219f668046eb62621e532aa21039ab32639a54'
  name 'Unlox'
  homepage 'https://unlox.it/get'

  app 'Unlox.app'
end
