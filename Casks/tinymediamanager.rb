cask 'tinymediamanager' do
  version '3.1.7'
  sha256 'b170da8e1d150b7d6cda84d66d26955464177e9073fce64177c99238b4ca1fb6'

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
