cask 'typora' do
  version '0.9.9.8.2'
  sha256 '9a59bf1068b0e5518f2159bc5a129043087799f7be06d31c4905a925a3654d7d'

  url "https://www.typora.io/download/typora_#{version}.zip"
  appcast 'https://www.typora.io/download/dev_update.xml',
          checkpoint: '475be3ae734a70e3f35203d35fdbb5f8054e56f850fc13d1d564f06ddf4db2af'
  name 'Typora'
  homepage 'https://typora.io'

  app 'Typora.app'
end
