cask 'xact' do
  version '2.49'
  sha256 'b54d15865424964670720b58d8b3a68a51d536ad9f0b286dae99668b94811c00'

  url "http://xact.scottcbrown.org/xACT#{version}.zip"
  appcast 'http://xactupdate.scottcbrown.org/xACT.xml'
  name 'xACT'
  homepage 'http://xact.scottcbrown.org/'

  app "xACT#{version}/xACT.app"
end
