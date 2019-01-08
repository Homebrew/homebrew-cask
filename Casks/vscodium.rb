cask 'vscodium' do
  version '1.30.2'
  sha256 'fa01b440a02e58040b04227e11d51acb4bc5da6cf94e3cb1043268e9c416be8e'

  url "https://github.com/VSCodium/vscodium/releases/download/#{version}/VSCode-darwin-#{version}.zip"
  appcast 'https://github.com/VSCodium/vscodium/releases.atom'
  name 'VSCodium'
  homepage 'https://github.com/VSCodium/vscodium'

  app 'VSCodium.app'
end
