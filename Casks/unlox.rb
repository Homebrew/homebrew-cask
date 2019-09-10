cask 'unlox' do
  version '3.0.1.0'
  sha256 '9f88fcf526b673b7329d9efb8b5731277990d5781bf78cdfd6aa64b082c19bfa'

  url 'https://unlox.it/download/'
  appcast 'https://unlox.it/download/update.php'
  name 'Unlox'
  homepage 'https://unlox.it/get'

  depends_on macos: '>= :high_sierra'

  app 'Unlox.app'
end
