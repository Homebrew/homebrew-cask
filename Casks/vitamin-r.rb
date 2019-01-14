cask 'vitamin-r' do
  if MacOS.version <= :el_capitan
    version '2.58'
    sha256 'c6c631430b44359aa022d9ca5ca6e98dbdf7258f2ceae0353f344a035682661e'
  else
    version '3.03'
    sha256 'bd164d61e7605fdfca151fbfdb2446efc1247f4b1d3c75bdfd823c33a4e97535'
  end

  url "http://www.publicspace.net/download/signedVitamin#{version.major}.zip"
  appcast "http://www.publicspace.net/app/vitamin#{version.major}.xml"
  name 'Vitamin-R'
  homepage 'http://www.publicspace.net/Vitamin-R/'

  app "Vitamin-R #{version.major}.app"
end
