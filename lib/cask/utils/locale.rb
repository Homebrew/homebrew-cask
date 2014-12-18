require 'yaml'

module Cask::Utils::Locale
  GLOBAL_PREFERENCES_DOMAIN = '.GlobalPreferences'
  APPLE_LOCALE_KEY = "AppleLocale"

  RESOURCE_FORK_REGION_BASE_ID = 5000

  # Sources:
  #
  # - /System/Library/Frameworks/CoreServices.framework/Frameworks/ \
  #   CarbonCore.framework/Headers/Script.h
  #
  # - http://whitefiles.org/b1_s/1_free_guides/fg3mo/pgs/t02.htm
  #
  # - http://www.filibeto.org/unix/macos/lib/dev/documentation/mac/ \
  #     pdf/Text/Script_Manager.pdf

  OS_LOCALES = YAML::load(<<-EOF.undent).freeze
    ---
    0:   'en_US'      # United States
    1:   'fr_FR'      # France
    2:   'en_GB'      # Britain
    3:   'de_DE'      # Germany
    4:   'it_IT'      # Italy
    5:   'nl_NL'      # Netherlands
    6:   'nl_BE'      # Flemish (Dutch) for Belgium
    7:   'sv_SE'      # Sweden
    8:   'es_ES'      # Spanish for Spain
    9:   'da_DK'      # Denmark
    10:  'pt_PT'      # Portuguese for Portugal
    11:  'fr_CA'      # French for Canada
    12:  'nb_NO'      # Bokmål
    13:  'he_IL'      # Hebrew
    14:  'ja_JP'      # Japan
    15:  'en_AU'      # English for Australia
    16:  'ar'         # Arabic
    17:  'fi_FI'      # Finland
    18:  'fr_CH'      # French Swiss
    19:  'de_CH'      # Swiss German
    20:  'el_GR'      # German Swiss
    21:  'is_IS'      # Iceland
    22:  'mt_MT'      # Malta
    23:  'el_CY'      # Cyprus
    24:  'tr_TR'      # Turkey
    25:  'hr_HR'      # Yugo/Croatian
    33:  'hi_IN'      # India/Hindi
    34:  'ur_PK'      # Pakistan/Urdu
    35:  'tr_TR'      # Turkish (Modified)
    36:  'it_CH'      # Italian Swiss
    37:  'en-ascii'   # English for international use
    39:  'ro_RO'      # Romania
    40:  'grc'        # Ancient Greek
    41:  'lt_LT'      # Lithuania
    42:  'pl_PL'      # Poland
    43:  'hu_HU'      # Hungary
    44:  'et_EE'      # Estonia
    45:  'lv_LV'      # Latvia
    46:  'se'         # Lapland
    47:  'fo_FO'      # Faroe Islands
    48:  'fa_IR'      # Iran
    49:  'ru_RU'      # Russia
    50:  'ga_IE'      # Ireland
    51:  'ko_KR'      # Korea
    52:  'zh_CN'      # China
    53:  'zh_TW'      # Taiwan
    54:  'th_TH'      # Thailand
    56:  'cs_CZ'      # Czech
    57:  'sk_SK'      # Slovak
    60:  'bn'         # Bangladesh or India
    61:  'be_BY'      # Belarus
    62:  'uk_UA'      # Ukraine
    65:  'sr_CS'      # Serbian
    66:  'sl_SI'      # Slovenian
    67:  'mk_MK'      # Macedonian
    68:  'hr_HR'      # Croatia
    70:  'de-1996'    # German (reformed)
    71:  'pt_BR'      # Portuguese for Brazil
    72:  'bg_BG'      # Bulgaria
    73:  'ca_ES'      # Catalonia
    75:  'gd'         # Scottish Gaelic
    76:  'gv'         # Isle of Man
    77:  'br'         # Breton
    78:  'iu_CA'      # Inuktitut for Canada
    79:  'cy'         # Welsh
    81:  'ga-Latg_IE' # Irish Gaelic for Ireland
    82:  'en_CA'      # English for Canada
    83:  'dz_BT'      # Dzongkha for Bhutan
    84:  'hy_AM'      # Armenian
    85:  'ka_GE'      # Georgian
    86:  'es_XL'      # Spanish for Latin America
    88:  'to_TO'      # Tonga
    91:  'fr'         # French generic
    92:  'de_AT'      # German for Austria
    94:  'gu_IN'      # Gujarati
    95:  'pa'         # Pakistan or India
    96:  'ur_IN'      # Urdu for India
    97:  'vi_VN'      # Vietnam
    98:  'fr_BE'      # French for Belgium
    99:  'uz_UZ'      # Uzbek
    100: 'en_SG'      # Singapore
    101: 'nn_NO'      # Norwegian Nynorsk
    102: 'af_ZA'      # Afrikaans
    103: 'eo'         # Esperanto
    104: 'mr_IN'      # Marathi
    105: 'bo'         # Tibetan
    106: 'ne_NP'      # Nepal
    107: 'kl'         # Greenland
    108: 'en_IE'      # English for Ireland, with Euro for currency
  EOF

  Locale = Struct.new(:locale_string) do
    def match_system_region?(region_code)
      os_locale_string = OS_LOCALES[region_code]

      if os_locale_string
        os_locale_string === locale_string.to_s
      else
        false
      end
    end

    def to_s
      locale_string
    end
  end

  def self.locale
    @@locale ||= load_locale
  end

  def self.resource_fork_region_base_id
    RESOURCE_FORK_REGION_BASE_ID
  end

  def self.load_locale
    options = {
      :args => ['read', GLOBAL_PREFERENCES_DOMAIN, APPLE_LOCALE_KEY]
    }
    locale_string = Cask::SystemCommand.run('/usr/bin/defaults', options)
    locale = Locale.new(locale_string.to_s.chomp)
    odebug "Current OS locale is: #{ locale }"
    locale
  end
end
