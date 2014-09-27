class Tangerine < Cask
  version '1.4.8'
  sha256 'dea00674331b1aa663cf00f64b0ce208638a136575987e1a7f50bd135117f2d9'

  url "http://distrib.karelia.com/downloads/Tangerine!-4008.zip"
  homepage 'http://www.karelia.com/products/tangerine/'

  app 'Tangerine!.app'
  
  postflight do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'com.potionfactory.Tangerine', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
  
end
