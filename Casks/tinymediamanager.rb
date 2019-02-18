cask 'tinymediamanager' do
  version '2.9.15_69b6104'
  sha256 '7a1aa341d9701b0adc4c7a60d6183aaff1cd4efb10c013de82265020f6fcf84a'

  url "http://release.tinymediamanager.org/dist/tmm_#{version}_mac.zip"
  appcast 'http://release.tinymediamanager.org/'
  name 'tinyMediaManager'
  homepage 'https://www.tinymediamanager.org/'

  app 'tinyMediaManager.app'

  caveats do
    depends_on_java '8+'
  end
end
