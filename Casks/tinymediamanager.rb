cask 'tinymediamanager' do
  version '2.9.16_42413ce'
  sha256 'd248355ff375bcdc5f830535b567630b78f2d214d1bc5c4d0945d2e1b356ac42'

  url "https://release.tinymediamanager.org/v#{version.major}/dist/tmm_#{version}_mac.zip"
  appcast 'https://release.tinymediamanager.org/'
  name 'tinyMediaManager'
  homepage 'https://www.tinymediamanager.org/'

  app 'tinyMediaManager.app'

  caveats do
    depends_on_java '8+'
  end
end
