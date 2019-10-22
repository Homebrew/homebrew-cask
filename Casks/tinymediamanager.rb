cask 'tinymediamanager' do
  version '3.0.5'
  sha256 '444eeef0723fbf00527b02beffb3d8c5d9b97aecab18819970fc8a109b1d5733'

  url "https://release.tinymediamanager.org/v#{version.major}/dist/tmm_#{version}_mac.zip"
  appcast 'https://release.tinymediamanager.org/'
  name 'tinyMediaManager'
  homepage 'https://www.tinymediamanager.org/'

  auto_updates true

  app 'tinyMediaManager.app'

  caveats do
    depends_on_java '8+'
  end
end
