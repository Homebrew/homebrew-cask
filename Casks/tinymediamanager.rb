cask 'tinymediamanager' do
  version '3.0.1'
  sha256 '67bf41198f4b2461f7985ddb9225d620fcc63842bb213a05cc4a8ece260ab5cc'

  url "https://release.tinymediamanager.org/v#{version.major}/dist/tmm_#{version}_mac.zip"
  appcast 'https://release.tinymediamanager.org/'
  name 'tinyMediaManager'
  homepage 'https://www.tinymediamanager.org/'

  app 'tinyMediaManager.app'

  caveats do
    depends_on_java '8+'
  end
end
