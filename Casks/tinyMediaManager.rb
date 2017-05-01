cask 'tinyMediaManager' do
  version '2.8.1'
  sha256 '0b0f9e24372ace9cdfbfe5c5bce3b8fefa85f0ff2b71d01bc32b30aeb26186a6'

  url 'http://release.tinymediamanager.org/dist/tmm_2.8.1_ced2842_mac.zip'
  name 'tinyMediaManager'
  homepage 'http://www.tinymediamanager.org/'
  license :apache

  app 'tinyMediaManager.app'

  caveats do
    depends_on_java('6')
  end
end
