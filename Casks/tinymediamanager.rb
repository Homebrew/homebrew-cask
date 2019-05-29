cask 'tinymediamanager' do
  version '2.9.17.1_bf18047'
  sha256 'b6830f65d39b1e15bff86e24d9667cb4cd296d0150a3b65ef18f9f8c9ab9b6ef'

  url "https://release.tinymediamanager.org/v#{version.major}/dist/tmm_#{version}_mac.zip"
  appcast 'https://release.tinymediamanager.org/'
  name 'tinyMediaManager'
  homepage 'https://www.tinymediamanager.org/'

  app 'tinyMediaManager.app'

  caveats do
    depends_on_java '8+'
  end
end
