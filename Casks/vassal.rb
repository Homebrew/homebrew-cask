cask 'vassal' do
  version '3.2.17'
  sha256 '9aa341de5c4ec936c137f21105ed7e622b2cd437600882d7bad9755dea5fac3e'

  # sourceforge.net/vassalengine was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/vassalengine/VASSAL-current/VASSAL-#{version}/VASSAL-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/vassalengine/rss?path=/VASSAL-current',
          checkpoint: '67bb5754515d3d563f0f1aa879462f38844ff90f5443dac6f92450c40526d20f'
  name 'VASSAL'
  homepage 'http://www.vassalengine.org/'

  app 'VASSAL.app'
end
