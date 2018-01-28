cask 'unlox' do
  version '2.0.1'
  sha256 'db14600045c310d5f9a08e70c46fe4d95967eece36c3b872dce31000ba9795ae'

  url 'https://unlox.it/download/'
  appcast 'https://unlox.it/download/update.php',
          checkpoint: '5fe273458ceae3ba47262ea2144923a473cca9f6125b8a5bc58e3bfb5db10a0a'
  name 'Unlox'
  homepage 'https://unlox.it/get'

  app 'Unlox.app'
end
