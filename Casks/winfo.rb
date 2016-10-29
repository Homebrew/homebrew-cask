cask 'winfo' do
  version '1.0'
  sha256 'a80dd06aa0824b93040d8098591d26f8bd3e338a365da62a114ae49204c011a1'

  url 'http://www.irradiatedsoftware.com/download/Winfo.zip'
  appcast 'http://www.irradiatedsoftware.com/updates/profiles/profile.php',
          checkpoint: '5ab91af76aff763729f5f11f062cb99eae966405724557745a5045c29f949000'
  name 'Winfo'
  homepage 'http://www.irradiatedsoftware.com/'

  auto_updates true

  app 'Winfo.app'

  zap delete: '~/Library/Preferences/com.irradiatedsoftware.Winfo.plist'
end
