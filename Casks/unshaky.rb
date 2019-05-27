cask 'unshaky' do
  version '0.5.5'
  sha256 '36ce63073977d5fe0a6719842ef67ef56380d4790134d4d0aab96d7b5064619f'

  url "https://github.com/aahung/Unshaky/releases/download/v#{version}/Unshaky_v#{version}.zip"
  appcast 'https://github.com/aahung/Unshaky/releases.atom'
  name 'Unshaky'
  homepage 'https://github.com/aahung/Unshaky'

  depends_on macos: '>= :sierra'

  app 'Unshaky.app'
end
