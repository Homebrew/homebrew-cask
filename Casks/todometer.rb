cask 'todometer' do
  version '1.0.4'
  sha256 '49a744d996cfa925b50064f1853f8bf1372a3073f449a482f7896ccc5ca15d48'

  # github.com/cassidoo/todometer was verified as official when first introduced to the cask
  url "https://github.com/cassidoo/todometer/releases/download/v#{version}/install-todometer.dmg"
  appcast 'https://github.com/cassidoo/todometer/releases.atom',
          checkpoint: 'd15eedbb844a21e27f9ac743cce59b6ae34f3e9ca1e184dcf3bfd1b48fed8726'
  name 'todometer'
  homepage 'https://cassidoo.github.io/todometer/'

  app 'todometer.app'
end
