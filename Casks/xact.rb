class Xact < Cask
  version '2.32'
  sha256 '645ff112b59fad2f344b16551472529b589a31d06cb620fb94c54cb453273fa2'

  url "http://xact.scottcbrown.org/xACT#{version}.zip"
  appcast 'http://xactupdate.scottcbrown.org/xACT.xml'
  homepage 'http://xact.scottcbrown.org'

  link "xACT #{version}/xACT.app"
end
