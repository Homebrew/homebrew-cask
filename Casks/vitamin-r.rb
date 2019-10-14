cask 'vitamin-r' do
  if MacOS.version <= :el_capitan
    version '2.58'
    sha256 'c6c631430b44359aa022d9ca5ca6e98dbdf7258f2ceae0353f344a035682661e'
  else
    version '3.10'
    sha256 'a86d898d6f2f5fec6b704ac4865a9914da4db72ddbf880e45d7c75a3104638ee'
  end

  url "https://www.publicspace.net/download/signedVitamin#{version.major}.zip"
  appcast "https://www.publicspace.net/app/vitamin#{version.major}.xml"
  name 'Vitamin-R'
  homepage 'https://www.publicspace.net/Vitamin-R/'

  auto_updates true

  app "Vitamin-R #{version.major}.app"
end
