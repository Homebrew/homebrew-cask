cask 'thisservice' do
  version '3.0.1'
  sha256 'ddf9635421834f1d6bd9fb257ad164f7b59ec2d2b65590d691ec5d2699ec8da2'

  url "http://wafflesoftware.net/thisservice/download/ThisService#{version}.zip"
  appcast 'http://wafflesoftware.net/thisservice/sparkle/sparkle.xml',
          checkpoint: 'ceba6331ef9bcc0160f1acf09edf7c4d6325c6ac5aca63469e0477825b65ef51'
  name 'ThisService'
  homepage 'http://wafflesoftware.net/thisservice/'

  app 'ThisService.app'
end
