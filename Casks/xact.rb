class Xact < Cask
  version '2.33'
  sha256 'bd828a3ed879442bf76564fc97c117bee8d49bddabaf3c066413f3dd9e27d714'

  url "http://xact.scottcbrown.org/xACT#{version}.zip"
  appcast 'http://xactupdate.scottcbrown.org/xACT.xml'
  homepage 'http://xact.scottcbrown.org'

  app "xACT #{version}/xACT.app"
end
