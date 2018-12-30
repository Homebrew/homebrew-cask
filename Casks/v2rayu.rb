cask 'v2rayu' do
  version '1.1.1'
  sha256 '058e0c235139430a8fa1ae2c9932a086c770208f7a581685d75b5297c656c6e2'

  url "https://github.com/yanue/V2rayU/releases/download/#{version}/V2rayU.dmg"
  appcast 'https://github.com/yanue/V2rayU/releases.atom'
  name 'V2rayU'
  homepage 'https://github.com/yanue/V2rayU'

  app 'V2rayU.app'
end
