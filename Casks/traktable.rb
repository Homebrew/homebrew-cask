cask :v1 => 'traktable' do
  version '0.5.2'
  sha256 '77d3800f02f2b5a2aef8a56e7986b731831738673e35c633d743df87bc556225'

  url "https://github.com/yo-han/Traktable/releases/download/#{version}/Traktable.zip"
  homepage 'http://yo-han.github.io/Traktable/'
  license :oss

  app 'Traktable.app'
end
