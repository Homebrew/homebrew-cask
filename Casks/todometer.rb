cask 'todometer' do
  version '2.0.0'
  sha256 'e10a9c481ca31235bda964dd25907a389a1085439e3a05ee3c43490874d9cf37'

  # github.com/cassidoo/todometer was verified as official when first introduced to the cask
  url "https://github.com/cassidoo/todometer/releases/download/v#{version}/todometer.for.Mac.zip"
  appcast 'https://github.com/cassidoo/todometer/releases.atom'
  name 'todometer'
  homepage 'https://cassidoo.github.io/todometer/'

  app 'todometer.app'
end
