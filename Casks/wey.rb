cask 'wey' do
  version '0.3.6'
  sha256 '8a1f3bd436b4d837ea2f586b5a96904bf6de02db5a25922cefd23b1f4e7e0b05'

  url "https://github.com/yue/wey/releases/download/v#{version}/wey-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/yue/wey/releases.atom'
  name 'Wey'
  homepage 'https://github.com/yue/wey'

  app 'Wey.app'
end
