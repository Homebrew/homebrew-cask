cask 'vitalsource-bookshelf' do
  version '8.1.0.207'
  sha256 '777c56bec59b8caad4992881d39d79f480e2630c2ea1f72837740c3ab60ef5a3'

  # rink.hockeyapp.net/api/2/apps/ was verified as official when first introduced to the cask
  url 'https://rink.hockeyapp.net/api/2/apps/ed52bc178e094f39a32f4aaa99ad71c2/app_versions/162?format=zip&avtoken=285a727626fb1d89ce9afb7c0a99f20f64990f3e&download_origin=hockeyapp'
  appcast 'https://rink.hockeyapp.net/api/2/apps/ed52bc178e094f39a32f4aaa99ad71c2'
  name 'VitalSource Bookshelf'
  homepage 'https://www.vitalsource.com/bookshelf-features'

  depends_on macos: '>= :yosemite'

  app 'VitalSource Bookshelf.app'
end
