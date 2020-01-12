cask 'tinymediamanager' do
  version '3.1'
  sha256 '57ef16d86ab1099980f8327d7f4320958265628259b3ab5394e6fd369a83ec7e'

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
