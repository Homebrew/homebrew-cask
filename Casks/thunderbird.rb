cask 'thunderbird' do
  version '52.9.1'

  language 'cs' do
    sha256 '0a4823ebb8fba8a91ec11777aa778893e31770453a361fe0de681024993e82d8'
    'cs'
  end

  language 'de' do
    sha256 '7600fa07e08ed1e03c9ced776b8a0625e6d81e7f5ad4928b8e4952839fd3a0e1'
    'de'
  end

  language 'en-GB' do
    sha256 '0f3dd957219b79196f003f6d41390cfcca2ce7d14dfd34bacc01a9c71a3dc964'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'b23efe964ab48e5f387893392cc9e394d4fd988ca99a872a15eade726bd7d078'
    'en-US'
  end

  language 'fr' do
    sha256 '2e03f28f088c943124a3f06944f3be2b01cd40c024cd47a85006f303978ce1b4'
    'fr'
  end

  language 'gl' do
    sha256 '82a74c8434afdde796af43dae8ac6f63565abe2cc5ee8b05fa8bbf2bb51b4593'
    'gl'
  end

  language 'it' do
    sha256 '012db97c9f3875594f275de80e5a8e6fa826693914a6c9fad15d67783fff4171'
    'it'
  end

  language 'ja' do
    sha256 '50382aa6cd2cb4f22089543b973d5baabdc020e2c3e968742fa90b3833e5d73e'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'e6cedb0e9dd142b7daeddbabd34c89a3362b23b7cc96251f508ecb048eb679c8'
    'nl'
  end

  language 'pl' do
    sha256 'aed3ae6553feaa6c905385d6249515db5f0318d25e64b325aab6388d0ee85f20'
    'pl'
  end

  language 'pt' do
    sha256 '2153a45dd22c3bdf4a70658bded45d3a9ef1399e8df2b6b363d6ddc2d4bc3745'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 'a4a5e208ab1f13bdb1ba64e857fc753b4d4b876d30eb126b58519996133ac177'
    'pt-BR'
  end

  language 'ru' do
    sha256 '0a4636bcda9924e36058c3d5a8a2dbb48ea224606ce01c70d180ebabdcb81c94'
    'ru'
  end

  language 'uk' do
    sha256 '449eabc780e88377c5948b523dd770d29ba7a975d87aefe74d52c1f156bbf781'
    'uk'
  end

  language 'zh-TW' do
    sha256 'd2014991eebb0d3c806be5472b29fc6ec3bb53070e1a41beb130210e3948586a'
    'zh-TW'
  end

  language 'zh' do
    sha256 '2b9e0d5cc7a10f31b14dd305a2b7ac3be0907a08b8410e63c945d7ad398c5630'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  appcast 'https://www.thunderbird.net/en-US/thunderbird/releases/'
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/thunderbird/'

  auto_updates true
  conflicts_with cask: [
                         'thunderbird-beta',
                         'thunderbird-daily',
                       ]

  app 'Thunderbird.app'

  zap trash: [
               '~/Library/Thunderbird',
               '~/Library/Caches/Thunderbird',
               '~/Library/Saved Application State/org.mozilla.thunderbird.savedState',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*',
             ]
end
