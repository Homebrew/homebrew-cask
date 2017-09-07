cask 'timer' do
  version :latest
  sha256 :no_check

  url 'http://www.apimac.com/download/Timer.zip'
  name 'Timer'
  homepage 'https://www.apimac.com/mac/timer/'

  app 'Timer.app'

  zap trash: [
               '~/Library/Preferences/Apimac',
               '~/Library/Application Support/Apimac',
             ]
end
