cask 'viewit' do
  version '2.63'
  sha256 '41dfaa4904b2cf454bc9f7d3a36df2a28382e109e4be43eb53024bd26cc2d16e'

  url "http://www.hexcat.com/downloads/ViewIt-#{version}.zip"
  appcast 'http://www.hexcat.com/downloads.html',
          checkpoint: '9dcddf7d3f126e39c3901e73b388f79b3c2aafdefd3ef198120c0592dd9fd91f'
  name 'ViewIt'
  homepage 'http://www.hexcat.com/viewit/'

  app 'ViewIt.app'
end
