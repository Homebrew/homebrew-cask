cask 'tinymediamanager' do
  version '3.1.2'
  sha256 '15a41d5a4e0400d38596d779e15d26f62e2416d2079657c525aff86aacc4b6a7'

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
