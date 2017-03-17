cask 'whatroute' do
  version '2.0.16'
  sha256 '3f871a70be24332ba6a37f9a5c09da905182c34026fd53a1afb402508af7660a'

  url "https://downloads.whatroute.net/software/whatroute-#{version}.zip"
  name 'WhatRoute'
  homepage 'https://www.whatroute.net/'

  depends_on macos: '>= :yosemite'

  app 'WhatRoute.app'
end
