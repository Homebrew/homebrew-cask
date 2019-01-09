cask 'unlox' do
  version '2.0.5.0'
  sha256 'ac7ef5899a3ec8418bfd4c459efea8b98cb9a540d66a6ae0187ae1170fc1a761'

  url 'https://unlox.it/download/'
  appcast 'https://unlox.it/download/update.php'
  name 'Unlox'
  homepage 'https://unlox.it/get'

  depends_on macos: '>= :high_sierra'

  app 'Unlox.app'
end
