cask 'tinymediamanager' do
  version '3.0.3'
  sha256 '7e071c62975af647206288a7e49ea324b0ff639e4f5c282e8c755edfc0091fc8'

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
