cask 'tweeten' do
  version '4.0.1'
  sha256 '0379b069b3814ec8bbea49c28ded23c4db4de7302402187e364435976d7153ab'

  # github.com/MehediH/Tweeten was verified as official when first introduced to the cask
  url "https://github.com/MehediH/Tweeten/releases/download/#{version}/tweeten-darwin-x64.zip"
  appcast 'https://github.com/MehediH/Tweeten/releases.atom',
          checkpoint: 'fbfdea6094660ad3fa3bc58d6e8d764f5d8c43aaa4faf5a913cee6ed776bc390'
  name 'Tweeten'
  homepage 'http://tweetenapp.com/'

  app 'tweeten-darwin-x64/Tweeten.app'
end
