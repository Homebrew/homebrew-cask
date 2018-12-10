cask 'tinymediamanager' do
  version '2.9.14_096b083'
  sha256 'd575154fa03d4b4b329cbea09d74c9ed38f60c01950b56342fb17908ad20cf60'

  url "https://release.tinymediamanager.org/dist/tmm_#{version}_mac.zip"
  appcast 'https://release.tinymediamanager.org/'
  name 'tinyMediaManager'
  homepage 'https://www.tinymediamanager.org/'

  app 'tinyMediaManager.app'

  caveats do
    depends_on_java '7+'
  end
end
