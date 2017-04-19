cask 'tinymediamanager' do
  version '2.9.3.1_1db4ca3'
  sha256 '4c1480ab098820a1ff3ae23a85c4aadac1ce1b14095a6b7ac01d16321d6a1781'

  url "https://release.tinymediamanager.org/dist/tmm_#{version}_mac.zip"
  appcast 'https://release.tinymediamanager.org/',
          checkpoint: '45b7f9ad2a2be867ee0b421286659cf35d99d966bf4ce34974618e4a67a35631'
  name 'tinyMediaManager'
  homepage 'https://www.tinymediamanager.org/'

  app 'tinyMediaManager.app'

  caveats do
    depends_on_java('7+')
  end
end
