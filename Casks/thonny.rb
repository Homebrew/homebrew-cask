cask 'thonny' do
  version '3.1.2'
  sha256 '7a71c31d61a769b0725d745ee2509229f8da086701670d48e02a85fa4b70388a'

  # github.com/thonny/thonny/releases/download was verified as official when first introduced to the cask
  url "https://github.com/thonny/thonny/releases/download/v#{version}/thonny-#{version}.dmg"
  appcast 'https://thonny.org/blog/categories/releases.html'
  name 'Thonny'
  homepage 'https://thonny.org/'

  app 'Thonny.app'

  zap trash: '~/.thonny'
end
