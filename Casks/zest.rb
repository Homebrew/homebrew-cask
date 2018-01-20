cask 'zest' do
  version '0.1.1'
  sha256 '9405fecb40731b47bb357e87714711afe6d1f6a9c3a4fa9d01b0109da9c3f947'

  # github.com/zestdocs/zest was verified as official when first introduced to the cask
  url "https://github.com/zestdocs/zest/releases/download/v#{version}/zest-v#{version}.dmg"
  appcast 'https://github.com/zestdocs/zest/releases.atom',
          checkpoint: '4e96ba4628f1ff8b6adec3c4b674af5bcb7b971cdb44d3a73367231550a7b221'
  name 'Zest'
  homepage 'https://zestdocs.github.io/'

  app 'Zest.app'

  zap trash: [
               '~/Library/Application Support/zest',
               '~/Library/Caches/zest',
               '~/Library/Preferences/org.zestdocs.plist',
               '~/Library/Saved Application State/org.zestdocs.savedState',
             ]

  caveats do
    discontinued
  end
end
