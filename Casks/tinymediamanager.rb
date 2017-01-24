cask 'tinymediamanager' do
  version '2.9.1_520388f'
  sha256 '84f62d867d74af7b13486a7ecc5f6e96f92bff290841f8bd956c7517befac551'

  url "https://release.tinymediamanager.org/dist/tmm_#{version}_mac.zip"
  appcast 'https://release.tinymediamanager.org/',
          checkpoint: '7166d4ca33a343c5dbaf7a4d859b1c7914bb115a018c5642da4e46cabbbaf075'
  name 'tinyMediaManager'
  homepage 'https://www.tinymediamanager.org/'

  app 'tinyMediaManager.app'

  caveats do
    depends_on_java('7+')
  end
end
