cask 'unlox' do
  version '2.0.1'
  sha256 'db14600045c310d5f9a08e70c46fe4d95967eece36c3b872dce31000ba9795ae'

  url 'https://unlox.it/download/'
  appcast 'https://unlox.it/download/update.php',
          checkpoint: '8e932777b009577398658dacc56b581e704196af71df5047f4073d067a60782e'
  name 'Unlox'
  homepage 'https://unlox.it/get'

  app 'Unlox.app'
end
