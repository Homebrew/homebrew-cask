cask 'tinymediamanager' do
  version '2.9.1_520388f'
  sha256 '84f62d867d74af7b13486a7ecc5f6e96f92bff290841f8bd956c7517befac551'

  url "http://release.tinymediamanager.org/dist/tmm_#{version}_mac.zip"
  appcast 'http://release.tinymediamanager.org/',
          checkpoint: '40c74bcce7552c2dd81cb5d5ba5445e7e376d9ea65f282ce146c234625b30d0b'
  name 'tinyMediaManager'
  homepage 'https://www.tinymediamanager.org/'

  app 'tinyMediaManager.app'

  caveats do
    depends_on_java('7+')
  end
end
