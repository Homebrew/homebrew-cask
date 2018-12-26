cask 'taskexplorer' do
  version '2.0.1'
  sha256 '87867920e2d3bde91df9ebd7e416c20be997dfa707471b8b32732bd856de85fd'

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
