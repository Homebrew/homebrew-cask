cask 'thisservice' do
  version '3.0.1'
  sha256 'ddf9635421834f1d6bd9fb257ad164f7b59ec2d2b65590d691ec5d2699ec8da2'

  url "http://wafflesoftware.net/thisservice/download/ThisService#{version}.zip"
  appcast 'http://wafflesoftware.net/thisservice/sparkle/sparkle.xml',
          checkpoint: '44c4dee2a01a0be96cd57e53e1a0f5c0022035e92b92de2bc48ca746333bc21d'
  name 'ThisService'
  homepage 'http://wafflesoftware.net/thisservice/'

  app 'ThisService.app'
end
