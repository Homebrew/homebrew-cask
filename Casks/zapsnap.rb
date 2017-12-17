cask 'zapsnap' do
  version '1.0.1'
  sha256 '279f04a35ab7a231dde456a48930440ed040854e81a49341f03728448e6aa118'

  url "https://zapsnap.io/public/downloads/Zapsnap-#{version}.dmg"
  name 'Zapsnap'
  homepage 'https://zapsnap.io/'

  app 'Zapsnap.app'
end
