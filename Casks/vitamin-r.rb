cask 'vitamin-r' do
  if MacOS.version <= :el_capitan
    version '2.58'
    sha256 'c6c631430b44359aa022d9ca5ca6e98dbdf7258f2ceae0353f344a035682661e'
  else
    version '3.13'
    sha256 'f97c2cf73c642b0d9d4d121246c901fce6c505e2a20e51e2c04a1c2db9c9c9cd'
  end

  url "https://www.publicspace.net/download/signedVitamin#{version.major}.zip"
  appcast "https://www.publicspace.net/app/vitamin#{version.major}.xml"
  name 'Vitamin-R'
  homepage 'https://www.publicspace.net/Vitamin-R/'

  auto_updates true

  app "Vitamin-R #{version.major}.app"
end
