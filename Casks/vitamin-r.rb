cask 'vitamin-r' do
  if MacOS.version <= :el_capitan
    version '2.58'
    sha256 'c6c631430b44359aa022d9ca5ca6e98dbdf7258f2ceae0353f344a035682661e'
  else
    version '3.06'
    sha256 '1026b92b1b2126de8e33c6ee745087d9d6eff0b38a07ac98bcd2ec30cc701935'
  end

  url "http://www.publicspace.net/download/signedVitamin#{version.major}.zip"
  appcast "http://www.publicspace.net/app/vitamin#{version.major}.xml"
  name 'Vitamin-R'
  homepage 'http://www.publicspace.net/Vitamin-R/'

  app "Vitamin-R #{version.major}.app"
end
