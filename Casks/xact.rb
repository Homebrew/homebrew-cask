cask 'xact' do
  version '2.38'
  sha256 '23ee0cc9d0e947f30c72dd9fb345fe9bfdd55169e5071447986c6188ac1eaba8'

  url "https://xact.scottcbrown.org/xACT#{version}.zip"
  appcast 'https://xactupdate.scottcbrown.org/xACT.xml',
          checkpoint: '8d9d65d16c97d222254af173465ace91b959a73129773f8ba8b19e8ac16995d9'
  name 'xACT'
  homepage 'https://xact.scottcbrown.org/'

  app "xACT #{version}/xACT.app"
end
