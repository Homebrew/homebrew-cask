cask 'tinymediamanager' do
  version '2.9.7_8513bee'
  sha256 '5efc8c2ac5ea52f515c6a9bc3bb168190d337e79f85e1d7e2c2559dd4f11f766'

  url "https://release.tinymediamanager.org/dist/tmm_#{version}_mac.zip"
  appcast 'https://release.tinymediamanager.org/',
          checkpoint: '2f3d4f22d255adbad6220670675b4c8390cab776edbd80d9281f83bccabb6cbb'
  name 'tinyMediaManager'
  homepage 'https://www.tinymediamanager.org/'

  app 'tinyMediaManager.app'

  caveats do
    depends_on_java('7+')
  end
end
