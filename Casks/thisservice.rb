cask :v1 => 'thisservice' do
  version '3.0.1'
  sha256 'ddf9635421834f1d6bd9fb257ad164f7b59ec2d2b65590d691ec5d2699ec8da2'

  url "http://wafflesoftware.net/thisservice/download/ThisService#{version}.zip"
  appcast 'http://wafflesoftware.net/thisservice/sparkle/sparkle.xml',
          :sha256 => '39a5e2f79f1560d4b405b183907da44326a34526b9160aedda9c4676ea75a13b'
  homepage 'http://wafflesoftware.net/thisservice/'
  license :unknown    # todo: improve this machine-generated value

  app 'ThisService.app'
end
