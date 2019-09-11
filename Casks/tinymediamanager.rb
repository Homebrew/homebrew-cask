cask 'tinymediamanager' do
  version '3.0.4'
  sha256 '3eb0e8027a2ff2fe1e5473b0a4ef85fb3429bded292ab448378696336bf25794'

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
