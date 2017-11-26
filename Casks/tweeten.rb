cask 'tweeten' do
  version '4.2.1'
  sha256 'acbecec6eab26eb583053ec23132966b14efbba2df0a80e838d7184bd08c3796'

  # github.com/MehediH/Tweeten was verified as official when first introduced to the cask
  url "https://github.com/MehediH/Tweeten/releases/download/#{version}/tweeten-darwin-x64.zip"
  appcast 'https://github.com/MehediH/Tweeten/releases.atom',
          checkpoint: 'c656cc27388eba6bcbfea670552137821c1333a53d8222378a0633efee1e3633'
  name 'Tweeten'
  homepage 'http://tweetenapp.com/'

  app 'tweeten-darwin-x64/Tweeten.app'
end
