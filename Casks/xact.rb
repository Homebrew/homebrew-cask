class Xact < Cask
  version '2.29'
  sha256 'bc8805f94b9f2320da64ca23b53e1b029fd65920ded2bc56c0291f0a73866674'

  url "http://xact.scottcbrown.org/xACT#{version}.zip"
  appcast 'http://xactupdate.scottcbrown.org/xACT.xml'
  homepage 'http://xact.scottcbrown.org'

  link "xACT #{version}/xACT.app"
end
