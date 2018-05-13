cask 'udeler' do
  version '1.5.0'
  sha256 'b63abdb2cd5567b87b57915e14251acd25ba62a5167667d8c6b2c8f501767127'

  url "https://github.com/FaisalUmair/udemy-downloader-gui/releases/download/v#{version}/Udeler-#{version}-mac.zip"
  appcast 'https://github.com/FaisalUmair/udemy-downloader-gui/releases.atom',
          checkpoint: '422e1bc8d9db8084063d011186555a65e132fd2c80aa905d2e9dda134ef63622'
  name 'Udeler'
  homepage 'https://github.com/FaisalUmair/udemy-downloader-gui/'

  app 'Udeler.app'
end
