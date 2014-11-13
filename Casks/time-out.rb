cask :v1 => 'time-out' do
  version '1.7.1'
  sha256 '3c9892344c8313b8ccf0a76cceb00834ddbe26e5114bcd674c4fd53aeb44e310'

  url "http://www.dejal.com/download/timeout-#{version}.zip"
  homepage 'http://www.dejal.com/timeout/'
  license :unknown

  app 'Time Out.app'
end
