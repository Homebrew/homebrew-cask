cask 'tinymediamanager' do
  version '2.9.10_a5ff08a'
  sha256 '72eec5d6ba414ac796df3983ff79cdc465413fda22394ecedbe856b0a45860c9'

  url "https://release.tinymediamanager.org/dist/tmm_#{version}_mac.zip"
  appcast 'https://release.tinymediamanager.org/',
          checkpoint: '8be22db36327aa033aa20ae80ba534b1b27a1b426fce101210f3cdc8f7a4501c'
  name 'tinyMediaManager'
  homepage 'https://www.tinymediamanager.org/'

  app 'tinyMediaManager.app'

  caveats do
    depends_on_java('7+')
  end
end
