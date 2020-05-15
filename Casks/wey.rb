cask 'wey' do
  version '0.3.7'
  sha256 'a98359f3a1ce34c0e45887628b37fad2949a273d0dd814a0ae37ad3f3b59f3aa'

  url "https://github.com/yue/wey/releases/download/v#{version}/wey-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/yue/wey/releases.atom'
  name 'Wey'
  homepage 'https://github.com/yue/wey'

  app 'Wey.app'
end
