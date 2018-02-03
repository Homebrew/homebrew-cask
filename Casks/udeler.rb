cask 'udeler' do
  version '1.3.2'
  sha256 '00ea11e1fd6604130762951b0d50960e870c0ebe002ce814ea3dfd083e8e677f'

  url "https://github.com/FaisalUmair/udemy-downloader-gui/releases/download/v#{version}/Udeler-#{version}-mac.zip"
  appcast 'https://github.com/FaisalUmair/udemy-downloader-gui/releases.atom',
          checkpoint: '5b74cac7bb5f8c984b8bc6a42ffacb5608521e224795e06b356f6405da186a03'
  name 'Udeler'
  homepage 'https://github.com/FaisalUmair/udemy-downloader-gui/'

  app 'Udeler.app'
end
