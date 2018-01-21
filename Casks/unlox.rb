cask 'unlox' do
  version '2.0.0.18'
  sha256 'b7e9252f8c46e498aedc09a34783d8242a08788ad935f3fcbd87f59e91800287'

  url 'https://unlox.it/download/'
  appcast 'https://unlox.it/download/update.php',
          checkpoint: '5fe273458ceae3ba47262ea2144923a473cca9f6125b8a5bc58e3bfb5db10a0a'
  name 'Unlox'
  homepage 'https://unlox.it/get'

  app 'Unlox.app'
end
