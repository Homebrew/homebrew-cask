cask 'unison' do
  if MacOS.version <= :mountain_lion
    version '2.40.69'
    sha256 '2bcc460511f2b43fa1613cc5f9ba4dd59bb12d40b5b9fb2e9f21adaf854bcf3b'

    # unison-binaries.inria.fr was verified as official when first introduced to the cask
    url "https://unison-binaries.inria.fr/files/Unison-#{version}_x64.dmg"
  elsif MacOS.version <= :yosemite
    version '2.48.3'
    sha256 'd578196d8b38f35c1e0410a1c86ff4e115a91f7eb211201db7a940a3a3e0f099'

    # github.com/bcpierce00/unison/releases/download was verified as official when first introduced to the cask
    url "https://github.com/bcpierce00/unison/releases/download/#{version}/Unison-OS-X-#{version}.zip"
  else
    version '2.48.15'
    sha256 '89894d14c9ff3c4d6195cb6a8065a2849e6ad55951799eedf8879e1a257d3e11'

    # github.com/bcpierce00/unison/releases/download was verified as official when first introduced to the cask
    url "https://github.com/bcpierce00/unison/releases/download/#{version}/Unison-OS-X-#{version}.zip"
  end

  appcast 'https://github.com/bcpierce00/unison/releases.atom',
          checkpoint: 'e8eaa827b069c50db797d395b2722be0760a4d229f9f332d714f754efeaed467'
  name 'Unison'
  homepage 'https://www.cis.upenn.edu/~bcpierce/unison/'

  app 'Unison.app'
end
