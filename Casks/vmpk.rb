cask 'vmpk' do
  version '0.7.0'
  sha256 '9511bc10f779c7e18a24e15af2a9c03bcb41be987644722b392a605a8cff038e'

  #  https://downloads.sourceforge.net/vmpk/vmpk-#{version}-mac-x64.dmg was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/vmpk/vmpk-#{version}-mac-x64.dmg"
  appcast 'https://sourceforge.net/projects/vmpk/rss',
          checkpoint: '67e5b6ecedfff78d90cd5c69d8527e382221328ec866dc459e9e49a35156afc2'
  name 'VMPK'
  homepage 'http://vmpk.sourceforge.net/'

  app 'vmpk.app'
end
