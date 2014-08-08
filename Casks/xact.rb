class Xact < Cask
  version '2.31'
  sha256 '8e971fb8ae3f24a8188b9f70366993520c31922649058c04de0d084af5c8521e'

  url "http://xact.scottcbrown.org/xACT#{version}.zip"
  appcast 'http://xactupdate.scottcbrown.org/xACT.xml'
  homepage 'http://xact.scottcbrown.org'

  link "xACT #{version}/xACT.app"
end
