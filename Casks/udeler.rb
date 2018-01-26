cask 'udeler' do
  version '1.2.0'
  sha256 'eb7206a5877fa578622212a0ffd2f665855dbf15ae3e8d7634847218cafec382'

  url "https://github.com/FaisalUmair/udemy-downloader-gui/releases/download/v#{version}/Udeler-#{version}-mac.zip"
  appcast 'https://github.com/FaisalUmair/udemy-downloader-gui/releases.atom',
          checkpoint: 'a0b63a95453c3c1319eae5c3f7181ebf82598de3ae10a6543878061ac76fb5bd'
  name 'Udeler'
  homepage 'https://github.com/FaisalUmair/udemy-downloader-gui/'

  app 'Udeler.app'
end
