cask 'veusz' do
  version '2.2.2'
  sha256 '3e927f3afa543dde0dd431ac1d690bd5b7f6b18bf185ce75fd7b12aecf4c6cc9'

  # github.com/veusz/veusz was verified as official when first introduced to the cask
  url "https://github.com/veusz/veusz/releases/download/veusz-#{version}/veusz-#{version}-AppleOSX.dmg"
  appcast 'https://github.com/veusz/veusz/releases.atom',
          checkpoint: 'c471b02f3bd1131a615dae8b8eb5e7735634243e5715d4335c0b373cb277d506'
  name 'Veusz'
  homepage 'https://veusz.github.io/'

  app 'Veusz.app'
end
