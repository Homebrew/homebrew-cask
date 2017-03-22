cask 'taskexplorer' do
  version '1.5.0'
  sha256 '3abedfe21a438013310a2f756337570c483c3b64c9fe50acb6e3e568e0c2e597'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/TaskExplorer_#{version}.zip"
  appcast 'https://objective-see.com/products.json',
          checkpoint: '6a8d829ea5c7dfd7cc59f0b816512c6d7806b1e5ccbffa93fd14db9260266603'
  name 'TaskExplorer'
  homepage 'https://objective-see.com/products/taskexplorer.html'

  app 'TaskExplorer.app'
end
