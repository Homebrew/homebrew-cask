cask 'tinymediamanager' do
  version '2.9.2_4c5fcb0'
  sha256 '1521c06c6642befd76a76c93e0db0a08e84ae3a7ee4177eba134f77c64cd1a57'

  url "https://release.tinymediamanager.org/dist/tmm_#{version}_mac.zip"
  appcast 'https://release.tinymediamanager.org/',
          checkpoint: '3c8cca623dcb4eecf957048e8637839db0dbc597faae72987427a8ce218c4e08'
  name 'tinyMediaManager'
  homepage 'https://www.tinymediamanager.org/'

  app 'tinyMediaManager.app'

  caveats do
    depends_on_java('7+')
  end
end
