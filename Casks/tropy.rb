cask 'tropy' do
  version '1.1.3'
  sha256 '9018be948268bdee52e79a6e5a15f4d53cd893a83e8a80598d27f350a2b7ae82'

  # github.com/tropy/tropy was verified as official when first introduced to the cask
  url "https://github.com/tropy/tropy/releases/download/#{version}/tropy-#{version}.dmg"
  appcast 'https://github.com/tropy/tropy/releases.atom',
          checkpoint: 'bccba5114049a1fc500c3c23526ba956e2521ee61e0cb93de3b558ec8da439f8'
  name 'Tropy'
  homepage 'https://tropy.org/'

  app 'Tropy.app'
end
