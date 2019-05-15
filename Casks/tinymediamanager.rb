cask 'tinymediamanager' do
  version '2.9.17_a55d726'
  sha256 'db80b8677f04c53d38441a60b930b81c0cbb1ad41a911e69889656bb64802409'

  url "https://release.tinymediamanager.org/v#{version.major}/dist/tmm_#{version}_mac.zip"
  appcast 'https://release.tinymediamanager.org/'
  name 'tinyMediaManager'
  homepage 'https://www.tinymediamanager.org/'

  app 'tinyMediaManager.app'

  caveats do
    depends_on_java '8+'
  end
end
