cask 'wey' do
  version '0.2.3'
  sha256 'e3c14444fee3e04ef0f8a0808aa1cb3607f62dfba0f8aaa0edcf8b80fdd021cd'

  url "https://github.com/yue/wey/releases/download/v#{version}/wey-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/yue/wey/releases.atom',
          checkpoint: 'bab5a35194352575519d4b99ffabab5c0fa1148ab25aefce3bb4e404fe148ab4'
  name 'Wey'
  homepage 'https://github.com/yue/wey'

  app 'Wey.app'
end
