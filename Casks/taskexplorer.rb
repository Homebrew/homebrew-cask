cask 'taskexplorer' do
  version '2.0.0'
  sha256 '7637f5011048dc3c5bd8dfd82220bc3ffdac00f024cd2f58bd8b4880229e52f5'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/TaskExplorer_#{version}.zip"
  appcast 'https://objective-see.com/products/changelogs/TaskExplorer.txt'
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
