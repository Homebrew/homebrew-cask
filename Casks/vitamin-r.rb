cask 'vitamin-r' do
  if MacOS.version <= :el_capitan
    version '2.58'
    sha256 'c6c631430b44359aa022d9ca5ca6e98dbdf7258f2ceae0353f344a035682661e'
  else
    version '3.12'
    sha256 '0fc2e4c0e5006d4e53e6b7358d30fb5d6a73b286acd94a3fc559a275123b6115'
  end

  url "https://www.publicspace.net/download/signedVitamin#{version.major}.zip"
  appcast "https://www.publicspace.net/app/vitamin#{version.major}.xml"
  name 'Vitamin-R'
  homepage 'https://www.publicspace.net/Vitamin-R/'

  auto_updates true

  app "Vitamin-R #{version.major}.app"
end
