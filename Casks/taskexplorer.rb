cask 'taskexplorer' do
  version '1.5.0'
  sha256 '3abedfe21a438013310a2f756337570c483c3b64c9fe50acb6e3e568e0c2e597'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/TaskExplorer_#{version}.zip"
  appcast 'https://objective-see.com/products.json',
          checkpoint: 'b2004932186e0eb176a9ac01fe499de292d502d7a17559e900822f9cdbfa74d6'
  name 'TaskExplorer'
  homepage 'https://objective-see.com/products/taskexplorer.html'

  app 'TaskExplorer.app'
end
