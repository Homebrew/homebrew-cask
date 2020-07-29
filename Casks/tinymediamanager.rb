cask 'tinymediamanager' do
  version '3.1.6'
  sha256 '231b8a770d800ebd3aceaca5ae6329de7fece11563efab15fbd74a195393d877'

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
