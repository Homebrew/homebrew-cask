cask 'vassal' do
  version '3.2.17'
  sha256 '9aa341de5c4ec936c137f21105ed7e622b2cd437600882d7bad9755dea5fac3e'

  # sourceforge.net/vassalengine was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/vassalengine/VASSAL-current/VASSAL-#{version}/VASSAL-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/vassalengine/rss?path=/VASSAL-current',
          checkpoint: '9cea3e557aac1ca18ddeedf4ac7adab15a401efc1c568dae2faf0b5004b69cb7'
  name 'VASSAL'
  homepage 'http://www.vassalengine.org/'

  app 'VASSAL.app'
end
