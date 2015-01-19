cask :v1 => 'wiznote' do
  version '2015-01-14'
  sha256 '5edd3fd654c6168779f89553de970c35038111624ff9a0a4b26dbaa2530b035e'

  # wiz.cn is the official download host per the vendor homepage
  url "http://release.wiz.cn/wiznote-macos-#{version}.dmg"
  homepage 'http://www.wiznote.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'WizNote.app'
end
