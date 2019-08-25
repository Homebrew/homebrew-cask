cask 'wanna' do
  version '1.0.0-alpha.2+flex'
  sha256 '73a126f1f130908e91dac1c16117516dfc1d92c9eaf6a105fd02c2c0c4872a72'

  # github.com was verified as official when first introduced to the cask
  url 'https://github.com/mkermani144/wanna/releases/download/1.0.0-alpha.2%2Bflex/wanna-1.0.0-alpha.2.dmg'
  appcast 'https://github.com/mkermani144/wanna/releases.atom'
  name 'Wanna To-Do List'
  homepage 'https://wanna.js.org/'

  app 'wanna.app'
end
