cask 'wey' do
  version '0.1.0'
  sha256 'ca6126b815e9b0a04422ae52fa890e3167b3eab0d2a1216bce7a1e2df2dd0f31'

  url "https://github.com/yue/wey/releases/download/v#{version}/wey-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/yue/wey/releases.atom',
          checkpoint: '7c22dcae0c9a1a70699b36170d57ec04bae77737cf2374e7c7842d7050c538ae'
  name 'Wey'
  homepage 'https://github.com/yue/wey'

  app 'Wey.app'
end
