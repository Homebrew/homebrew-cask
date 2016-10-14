cask 'taskexplorer' do
  version '1.4.0'
  sha256 '3bcc5e3b893529f033c0e147e99f77899e9f43aac25fce9167fc94290528dc03'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/TaskExplorer_#{version}.zip"
  name 'TaskExplorer'
  homepage 'https://objective-see.com/products/taskexplorer.html'

  app 'TaskExplorer.app'
end
