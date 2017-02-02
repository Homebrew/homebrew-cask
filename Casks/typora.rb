cask 'typora' do
  version '0.9.9.9.0'
  sha256 '17a3781e33d045bfa59a8f6c976d5208d6b4a7e1b2d22a16e03bb02c74059fc9'

  url "https://www.typora.io/download/typora_#{version}.zip"
  appcast 'https://www.typora.io/download/dev_update.xml',
          checkpoint: '7218d417f1032bb4b89ba3239aafac2c1584848404fdf8e2737555265582e3fb'
  name 'Typora'
  homepage 'https://typora.io/'

  app 'Typora.app'
end
