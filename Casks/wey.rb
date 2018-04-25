cask 'wey' do
  version '0.1.1'
  sha256 '64375ec21d286b9be0af9a863cc53cd0159f9b27c03540fd275455998a780498'

  url "https://github.com/yue/wey/releases/download/v#{version}/wey-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/yue/wey/releases.atom',
          checkpoint: '6910598e1ac593f9ecf163782b88e03b36711e516847a2dddc888cffc06cd062'
  name 'Wey'
  homepage 'https://github.com/yue/wey'

  app 'Wey.app'
end
