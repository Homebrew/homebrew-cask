cask 'winfo' do
  version '1.0'
  sha256 'a80dd06aa0824b93040d8098591d26f8bd3e338a365da62a114ae49204c011a1'

  url 'https://www.irradiatedsoftware.com/download/Winfo.zip'
  appcast 'https://www.irradiatedsoftware.com/updates/profiles/profile.php',
          checkpoint: '0cd193099702c281bb723c8658b8022f8aa742c643edd96208ec0229c503548d'
  name 'Winfo'
  homepage 'https://www.irradiatedsoftware.com/'

  auto_updates true

  app 'Winfo.app'

  zap delete: '~/Library/Preferences/com.irradiatedsoftware.Winfo.plist'
end
