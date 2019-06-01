cask 'tinymediamanager' do
  version '3.0'
  sha256 'a5405fbe427e4a87ab6c9f5cc76348c9c021a6784d58aa186f83c5f155dbbd71'

  url "https://release.tinymediamanager.org/v#{version.major}/dist/tmm_#{version}_mac.zip"
  appcast 'https://release.tinymediamanager.org/'
  name 'tinyMediaManager'
  homepage 'https://www.tinymediamanager.org/'

  app 'tinyMediaManager.app'

  caveats do
    depends_on_java '8+'
  end
end
