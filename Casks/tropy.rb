cask 'tropy' do
  version '1.2.0'
  sha256 '0f72fcf725219a6c09e2354441f80cc9867aef0db5c54dbf83ec6e3fc0cf9565'

  # github.com/tropy/tropy was verified as official when first introduced to the cask
  url "https://github.com/tropy/tropy/releases/download/#{version}/tropy-#{version}.dmg"
  appcast 'https://github.com/tropy/tropy/releases.atom',
          checkpoint: '6a9ace634ee4365ec0293436b68c10a4c775770ffccb57ca98e887027b41ffa3'
  name 'Tropy'
  homepage 'https://tropy.org/'

  app 'Tropy.app'
end
