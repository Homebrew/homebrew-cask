cask 'tinymediamanager' do
  version '3.1.3'
  sha256 'c146c5a2ab7877abf19996b59a788a0546a901dfcb4789368356903c99e8df4a'

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
