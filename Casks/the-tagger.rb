cask 'the-tagger' do
  version '1.6.2'
  sha256 '804559029ad38dc4850a780c6b7677c440784761c83af5b470b2df579b649c81'

  url 'https://deadbeatsw.com/thetagger/TheTaggerLatest.zip'
  appcast 'https://deadbeatsw.com/thetagger/appcast.xml',
          checkpoint: '2567fc729d9e769fb4f492d66ad97422f261b113f9e78c4159b5ce9b52a9e42f'
  name 'The Tagger'
  homepage 'https://deadbeatsw.com/thetagger/'

  app 'The Tagger.app'
end
