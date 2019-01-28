cask 'runelite' do
  version '1.6.1'
  sha256 '0bb12b96431f8347047515679a7fe1e2b7d1fa4be451682a864a731352a8b89e'

  # github.com/runelite/launcher was verified as official when first introduced to the cask
  url "https://github.com/runelite/launcher/releases/download/#{version}/RuneLite.dmg"
  appcast 'https://github.com/runelite/launcher/releases.atom'
  name 'RuneLite'
  homepage 'https://runelite.net/'

  app 'RuneLite.app'

  zap trash: [
               '~/jagex_cl_oldschool_LIVE.dat',
               '~/jagexcache',
               '~/random.dat',
               '~/.runelite',
             ]
end
