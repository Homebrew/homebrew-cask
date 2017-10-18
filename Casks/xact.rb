cask 'xact' do
  version '2.41'
  sha256 'bb46554ea4092d3ad905a787466a2dc10db956cb0e30750d51fad2f25f7f27b0'

  url "http://xact.scottcbrown.org/xACT#{version}.zip"
  appcast 'http://xactupdate.scottcbrown.org/xACT.xml',
          checkpoint: '53320b5b35c5497b28f20a9cf85990474fb5b4efd33351c2a83d61d2671f4fbf'
  name 'xACT'
  homepage 'http://xact.scottcbrown.org/'

  app "xACT #{version}/xACT.app"
end
