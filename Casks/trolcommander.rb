cask 'trolcommander' do
  version '0.9.6'
  sha256 '2378192a989c83e73ffad84a93b281ba2d0f8aeaac5763a454c3d66308423904'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/trol73/trol-commander-dist/blob/master/#{version}/trolcommander-#{version.gsub('.', '_')}.app.tar.gz?raw=true"
  name 'trolCommander'
  homepage 'http://trolsoft.ru/en/soft/trolcommander'
  license :gpl

  app 'trolCommander.app'
end
