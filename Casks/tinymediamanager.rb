cask 'tinymediamanager' do
  version '2.9.8_6644bb9'
  sha256 '02687a49ae252c30a96e467b4286d1783c23377662e9504fef7f6bee1dbb64cc'

  url "https://release.tinymediamanager.org/dist/tmm_#{version}_mac.zip"
  appcast 'https://release.tinymediamanager.org/',
          checkpoint: 'daaa35bd818ca2d7412abca29079af4ffde5bdb833ae87f843c6136ada4c4239'
  name 'tinyMediaManager'
  homepage 'https://www.tinymediamanager.org/'

  app 'tinyMediaManager.app'

  caveats do
    depends_on_java('7+')
  end
end
