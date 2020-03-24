cask 'tinymediamanager' do
  version '3.1.4'
  sha256 '9386928df1021f51856457de0ed4b4edeca934c731a6b4dd2cfe4b1fa677c527'

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
