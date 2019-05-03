cask 'twitter-mini' do
  version '1.0.3'
  sha256 'cc7d3a2f63477fafbb9d85b565ae4c373504c6ad6ac36298b727fbf7dc1586fc'

  url "https://github.com/dongri/twitter-mini/releases/download/v#{version}/Twitter.Mini-#{version}.dmg"
  name 'Twitter Mini'
  homepage 'https://github.com/dongri/twitter-mini'

  app 'Twitter Mini.app'
end
