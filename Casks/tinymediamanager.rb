cask 'tinymediamanager' do
  version '2.9.13_5cfe5d1'
  sha256 'c3adf4e2d81189da62f16df76f202fd2bff8db8057452598972b1ef8296bc36e'

  url "https://release.tinymediamanager.org/dist/tmm_#{version}_mac.zip"
  appcast 'https://release.tinymediamanager.org/'
  name 'tinyMediaManager'
  homepage 'https://www.tinymediamanager.org/'

  app 'tinyMediaManager.app'

  caveats do
    depends_on_java '7+'
  end
end
