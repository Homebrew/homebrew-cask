cask 'taskexplorer' do
  version '1.6.0'
  sha256 '61a645e9a886a4631d9ed82182bdba9177845d1ce4cfbd1f0c0e7c2e96a9df9e'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/TaskExplorer_#{version}.zip"
  appcast 'https://objective-see.com/products/changelogs/TaskExplorer.txt',
          checkpoint: '41f17f50d40b9bce391572c276e2f812a5d0b2bb7ed20b54a881382930394792'
  name 'TaskExplorer'
  homepage 'https://objective-see.com/products/taskexplorer.html'

  depends_on macos: '>= :mountain_lion'

  app 'TaskExplorer.app'

  uninstall_preflight do
    set_ownership "#{appdir}/TaskExplorer.app"
  end

  zap trash: [
               '~/Library/Caches/com.objective-see.TaskExplorer',
               '~/Library/Preferences/com.objective-see.TaskExplorer.plist',
             ]
end
