cask 'tinymediamanager' do
  version '3.0.2'
  sha256 'd43308948c5993237af5cc05cde1624eae2bdde26806e3b4c1f9397f1bf3c071'

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
