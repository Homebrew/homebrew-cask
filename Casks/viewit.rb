cask 'viewit' do
  version '2.54'
  sha256 'ef4d73ab25352aa34de1cac8dc300819e2639c97d035babafbc020e63741eaeb'

  url "http://www.hexcat.com/downloads/ViewIt-#{version}.zip"
  name 'ViewIt'
  homepage 'http://www.hexcat.com/viewit/'
  license :commercial

  app 'ViewIt.app'
end
