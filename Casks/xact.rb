class Xact < Cask
  version '2.30'
  sha256 '49f7770ad682bdb36f63bebaf98875c22c1ffc7bb9a14b616213039506a9cf74'

  url "http://xact.scottcbrown.org/xACT#{version}.zip"
  appcast 'http://xactupdate.scottcbrown.org/xACT.xml'
  homepage 'http://xact.scottcbrown.org'

  link "xACT #{version}/xACT.app"
end
