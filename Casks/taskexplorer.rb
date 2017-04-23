cask 'taskexplorer' do
  version '1.5.0'
  sha256 '3abedfe21a438013310a2f756337570c483c3b64c9fe50acb6e3e568e0c2e597'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/TaskExplorer_#{version}.zip"
  appcast 'https://objective-see.com/products/changelogs/TaskExplorer.txt',
          checkpoint: '962d3f53501402454ea88963fbd1bdcfc07bd7867a15c5a0acba13608c27908d'
  name 'TaskExplorer'
  homepage 'https://objective-see.com/products/taskexplorer.html'

  depends_on macos: '>= :mountain_lion'

  app 'TaskExplorer.app'
end
