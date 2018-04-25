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
    version '2.51.2'
    sha256 '52142f3aa03b7beba03aaa8c61cb1e3287058cae825845b2355081d9e925b6de'

    # github.com/bcpierce00/unison/releases/download was verified as official when first introduced to the cask
    url "https://github.com/bcpierce00/unison/releases/download/v#{version}/Unison-#{version}.OS.X.zip"
  end

  appcast 'https://github.com/bcpierce00/unison/releases.atom',
          checkpoint: '98fc35df2c7db577517de4649c6886d82ba5c2034bcad1e7e46ad21b89237dce'
  name 'Unison'
  homepage 'https://www.cis.upenn.edu/~bcpierce/unison/'

  conflicts_with formula: 'unison'

  app 'Unison.app'
  binary "#{appdir}/Unison.app/Contents/MacOS/cltool", target: 'unison'

  postflight do
    system_command '/usr/bin/defaults', args: ['write', 'edu.upenn.cis.Unison', 'CheckCltool', '-bool', 'false']
  end
end
