cask 'udeler' do
  version '1.5.4'
  sha256 'e11759d54fd3fcef164520ed72a7406ed867aa21db6f45a0252060d8ac839d8a'

  url "https://github.com/FaisalUmair/udemy-downloader-gui/releases/download/v#{version}/Udeler-#{version}-mac.zip"
  appcast 'https://github.com/FaisalUmair/udemy-downloader-gui/releases.atom',
          checkpoint: '4000c89a17b8dd069469a335aaaa436d9a3a3a535f872bfae349bac144413c14'
  name 'Udeler'
  homepage 'https://github.com/FaisalUmair/udemy-downloader-gui/'

  app 'Udeler.app'
end
