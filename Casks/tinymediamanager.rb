cask 'tinymediamanager' do
  version '3.1.5'
  sha256 '5b58056055ef98c99892224621cd0ecfb0dc278b90487586bdff8a9ce95acaff'

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
