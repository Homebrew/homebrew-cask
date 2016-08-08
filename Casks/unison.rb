cask 'unison' do
  if MacOS.version <= :mountain_lion
    version '2.40.69'
    sha256 '2bcc460511f2b43fa1613cc5f9ba4dd59bb12d40b5b9fb2e9f21adaf854bcf3b'

    # unison-binaries.inria.fr was verified as official when first introduced to the cask
    url "http://unison-binaries.inria.fr/files/Unison-#{version}_x64.dmg"
  else
    version '2.48.15'
    sha256 '89894d14c9ff3c4d6195cb6a8065a2849e6ad55951799eedf8879e1a257d3e11'

    # unison-binaries.inria.fr was verified as official when first introduced to the cask
    url "http://unison-binaries.inria.fr/files/Unison-OS-X-#{version}.zip"
  end

  name 'Panic Unison'
  homepage 'https://www.cis.upenn.edu/~bcpierce/unison/'
  license :gpl

  depends_on arch: :x86_64

  app 'Unison.app'
end
