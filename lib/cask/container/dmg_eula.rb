class Cask::Container::DmgEula
  attr_reader :dmg_filename, :format, :language_id, :language_name

  LANGUAGE_RANK = lambda do |eula|
    region_code = eula.mac_system_region_code
    locale = Cask::Utils::Locale.locale
    locale_match = locale.match_system_region?(region_code)

    [
      (locale_match ? 0 : 1),   # Prefer exact matches
      eula.language_id,         # If inexact, prefer lower IDs (0 is English)
      (eula.rich_text? ? 0 : 1) # Also, prefer rich text over plain text
    ]
  end

  def self.all(dmg_filename)
    EULASpecParser.new(dmg_filename)
      .parse
      .sort_by(&LANGUAGE_RANK)
  end

  def show!(title)
    less_prompt = [
      %Q[License agreement for "#{ title }"],
      'Page %dm ?Bof %D.',
      '[H]elp  [Q]uit'
    ].join('    ')

    system("#{ content_command } | fmt | less -P '#{ less_prompt }'")
  end

  def content
    @content ||= `#{ content_command }`
  end

  def mac_system_region_code
    language_id - Cask::Utils::Locale.resource_fork_region_base_id
  end

  def plain_text?
    format === 'TEXT'
  end

  def rich_text?
    format === 'RTF '
  end

  def to_s
    "#{ language_name } language EULA (id: #{ language_id }, format: #{ file_extension })"
  end

  def initialize(dmg_filename, format, language_id, language_name)
    @dmg_filename = dmg_filename
    @format = format
    @language_id = language_id
    @language_name = language_name
  end

  private

  def content_command
    %Q<hdiutil udifderez -rez "#{ dmg_filename }" | awk -F\\" '/^data .#{ format }. \\(#{ language_id }[,)]/{current=1} /^\\t\\$/ {if(current) {print $2}} /};/{current=0}' | xxd -r -p | iconv -f MAC -t UTF-8 | tr '\\r' '\\n' | textutil -stdin -format #{ file_extension } -convert txt -stdout>
  end

  def file_extension
    case
      when plain_text? then 'txt'
      when rich_text?  then 'rtf'
    end
  end

  class EULASpecParser
    attr_reader :dmg_filename

    def initialize(dmg_filename)
      @dmg_filename = dmg_filename
    end

    def parse
      eula_spec = YAML::load(eula_spec_yaml) || []
      eula_spec.map do |raw_spec|
        odebug "EULA spec parsed from DMG: #{ raw_spec }"
        language_id, language_name = raw_spec[:language]
        Cask::Container::DmgEula.new(dmg_filename,
          raw_spec[:format], language_id, language_name)
      end
    end

    private

    def eula_spec_yaml
      `#{ eula_spec_yaml_command }`
    end

    def eula_spec_yaml_command
      %Q<hdiutil udifderez -rez "#{ dmg_filename }" | iconv -f MAC -t UTF-8 | sed -n -E "s/^data ('TEXT'|'RTF ') \\((.*)\\) {/- :format: \\1\\\\\n  :language: [ \\2 ]/p" | awk 'BEGIN { print "---" } 1'>
    end
  end
end
