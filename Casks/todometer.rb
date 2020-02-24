cask 'todometer' do
  version '1.0.4'
  sha256 '49a744d996cfa925b50064f1853f8bf1372a3073f449a482f7896ccc5ca15d48'

  # github.com/cassidoo/todometer was verified as official when first introduced to the cask
  url "https://github.com/cassidoo/todometer/releases/download/v#{version}/install-todometer.dmg"
  appcast 'https://github.com/cassidoo/todometer/releases.atom'
  name 'todometer'
  homepage 'https://cassidoo.github.io/todometer/'

  app 'todometer.app'
end
