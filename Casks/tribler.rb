cask 'tribler' do
  version '6.4.3'
  sha256 '74b79421a91e755518c16a941f8646968d94b167d38f9a911a8f97f91de29cae'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/Tribler/tribler/releases/download/v#{version}/Tribler-#{version}.dmg"
  appcast 'https://github.com/Tribler/tribler/releases.atom',
          :sha256 => '6dc37806e7e565d4cbaa8cf7a6961cd411d6906454ce511cd79b0145462f6949'
  name 'Tribler'
  homepage 'http://www.tribler.org'
  license :gpl

  app 'Tribler.app'
end
