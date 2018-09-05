cask 'winfo' do
  version '1.0'
  sha256 'a80dd06aa0824b93040d8098591d26f8bd3e338a365da62a114ae49204c011a1'

  url 'https://www.irradiatedsoftware.com/download/Winfo.zip'
  appcast 'https://www.irradiatedsoftware.com/updates/profiles/profile.php'
  name 'Winfo'
  homepage 'https://www.irradiatedsoftware.com/'

  auto_updates true

  app 'Winfo.app'

  zap trash: '~/Library/Preferences/com.irradiatedsoftware.Winfo.plist'
end
