# typed: true
# frozen_string_literal: true

require "abstract_command"
require "fileutils"
require "net/http"
require "uri"
require "cgi"

module Homebrew
  module Cmd
    class ImportGoogleFontsCmd < AbstractCommand
      cmd_args do
        usage_banner <<~EOS
          `import-google-fonts` <path-to-google-fonts-repo> [<mode>]

          Imports Google Fonts into Homebrew Cask.
          Parses METADATA.pb files (Protocol Buffer text format) directly.

          Download or clone the repository from https://github.com/google/fonts,
          then provide the path to this script.
        EOS

        switch "--add",
               description: "Add new fonts only"
        switch "--update",
               description: "Update existing fonts only"
        switch "--delete",
               description: "Delete fonts that no longer exist in the repo"

        named_args :google_fonts_repo, min: 1, max: 1

        hide_from_man_page!
      end

      def run
        repo_dir = args.named.first

        raise ArgumentError, "Repository directory '#{repo_dir}' does not exist" unless Dir.exist?(repo_dir)

        mode = if args.add?
          "add"
        elsif args.update?
          "update"
        elsif args.delete?
          "delete"
        end

        importer = GoogleFontsImporter.new(repo_dir: repo_dir, mode: mode)
        importer.run
      end

      # Parses Google Fonts METADATA.pb files (Protocol Buffer text format)
      class MetadataParser
        FontProto = Struct.new(:filename, :weight, :style, keyword_init: true)
        SourceProto = Struct.new(:repository_url, keyword_init: true)
        FamilyProto = Struct.new(:name, :fonts, :source, keyword_init: true) do
          def initialize(*)
            super
            self.fonts ||= []
          end
        end

        def self.parse(content)
          parser = new(content)
          parser.parse
        end

        def initialize(content)
          @content = content
          @pos = 0
        end

        def parse
          meta = FamilyProto.new
          while @pos < @content.length
            skip_whitespace_and_comments
            break if @pos >= @content.length

            key = read_key
            break unless key

            case key
            when "name"
              meta.name = read_string_value
            when "fonts"
              meta.fonts << parse_font_block
            when "source"
              meta.source = parse_source_block
            else
              skip_value
            end
          end
          meta
        end

        private

        def skip_whitespace_and_comments
          loop do
            # Skip whitespace
            @pos += 1 while @pos < @content.length && @content[@pos] =~ /\s/
            # Skip comments
            break if @pos >= @content.length || @content[@pos] != "#"

            @pos += 1 while @pos < @content.length && @content[@pos] != "\n"
          end
        end

        def read_key
          skip_whitespace_and_comments
          return if @pos >= @content.length

          key = ""
          while @pos < @content.length && @content[@pos] =~ /[a-z_]/i
            key += @content[@pos]
            @pos += 1
          end
          skip_whitespace_and_comments
          # Skip colon if present
          @pos += 1 if @pos < @content.length && @content[@pos] == ":"
          skip_whitespace_and_comments
          key.empty? ? nil : key
        end

        def read_string_value
          skip_whitespace_and_comments
          return "" if @pos >= @content.length || @content[@pos] != '"'

          @pos += 1 # Skip opening quote
          value = ""
          while @pos < @content.length && @content[@pos] != '"'
            if @content[@pos] == "\\" && @pos + 1 < @content.length
              @pos += 1
              value += case @content[@pos]
              when "n" then "\n"
              when "t" then "\t"
              when '"' then '"'
              when "\\" then "\\"
              else @content[@pos]
              end
            else
              value += @content[@pos]
            end
            @pos += 1
          end
          @pos += 1 if @pos < @content.length # Skip closing quote
          value
        end

        def read_number_value
          skip_whitespace_and_comments
          value = ""
          while @pos < @content.length && @content[@pos] =~ /[0-9.-]/
            value += @content[@pos]
            @pos += 1
          end
          value.include?(".") ? value.to_f : value.to_i
        end

        def skip_value
          skip_whitespace_and_comments
          return if @pos >= @content.length

          case @content[@pos]
          when "{"
            skip_block
          when '"'
            read_string_value
          else
            # Skip until whitespace or newline
            @pos += 1 while @pos < @content.length && @content[@pos] !~ /[\s{]/
          end
        end

        def skip_block
          return if @content[@pos] != "{"

          @pos += 1
          depth = 1
          while @pos < @content.length && depth.positive?
            case @content[@pos]
            when "{"
              depth += 1
            when "}"
              depth -= 1
            when '"'
              read_string_value
              next
            end
            @pos += 1
          end
        end

        def parse_font_block
          skip_whitespace_and_comments
          return FontProto.new if @content[@pos] != "{"

          @pos += 1 # Skip opening brace
          font = FontProto.new

          loop do
            skip_whitespace_and_comments
            break if @pos >= @content.length || @content[@pos] == "}"

            key = read_key
            break unless key

            case key
            when "name", "filename"
              font.filename = read_string_value if key == "filename"
              read_string_value if key == "name"
            when "weight"
              font.weight = read_number_value
            when "style"
              font.style = read_string_value
            else
              skip_value
            end
          end

          @pos += 1 if @pos < @content.length # Skip closing brace
          font
        end

        def parse_source_block
          skip_whitespace_and_comments
          return SourceProto.new if @content[@pos] != "{"

          @pos += 1 # Skip opening brace
          source = SourceProto.new

          loop do
            skip_whitespace_and_comments
            break if @pos >= @content.length || @content[@pos] == "}"

            key = read_key
            break unless key

            case key
            when "repository_url"
              source.repository_url = read_string_value
            else
              skip_value
            end
          end

          @pos += 1 if @pos < @content.length # Skip closing brace
          source
        end
      end

      # Represents a font cask with all its metadata
      class FontCask
        CASK_TEMPLATE = <<~TEMPLATE
          cask "%<token>s" do
            version :latest
            sha256 :no_check

          %<url_section>s
            name "%<font_name>s"
            homepage "%<homepage>s"

          %<font_lines>s

            # No zap stanza required
          end
        TEMPLATE

        attr_accessor :description, :homepage_override

        def initialize(folder:, meta:, description: nil, early_access: false)
          @folder = folder
          @meta = meta
          @description = description
          @early_access = early_access
          @homepage_override = nil
        end

        def font_name
          @meta.name
        end

        def token
          "font-#{font_name.downcase.tr(" ", "-")}"
        end

        def token_sharding_dir
          "font-#{token.split("font-")[1][0]}"
        end

        def dest_path
          File.join("Casks", "font", token_sharding_dir, "#{token}.rb")
        end

        def name_path
          font_name.tr(" ", "+")
        end

        def homepage
          return @homepage_override if @homepage_override

          if @early_access
            "https://fonts.google.com/earlyaccess"
          else
            "https://fonts.google.com/specimen/#{name_path}"
          end
        end

        def files
          @meta.fonts.filter_map(&:filename).sort
        end

        def cask_content
          url_section = if files.length == 1
            single_file_url_section
          else
            multi_file_url_section
          end

          font_lines = files.map { |f| "  font \"#{f}\"" }.join("\n")

          format(CASK_TEMPLATE,
                 token:       token,
                 url_section: url_section,
                 font_name:   font_name,
                 homepage:    homepage,
                 font_lines:  font_lines)
        end

        attr_reader :meta

        private

        def single_file_url_section
          encoded_file = CGI.escape(files.first).gsub("+", "%20")
          verified = homepage.include?("github.com/") ? "" : ",\n      verified: \"github.com/google/fonts/\""
          "  url \"https://github.com/google/fonts/raw/main/#{@folder}/#{encoded_file}\"#{verified}"
        end

        def multi_file_url_section
          verified = homepage.include?("github.com/") ? "" : "\n      verified:  \"github.com/google/fonts\","
          "  url \"https://github.com/google/fonts.git\",#{verified}\n      " \
            "branch:    \"main\",\n      only_path: \"#{@folder}\""
        end
      end

      # Main application class for importing Google Fonts
      class GoogleFontsImporter
        SUBDIRS = %w[apache ofl ufl].freeze
        SKIP_TOKENS = %w[font-ek-mukta].freeze
        SKIP_CASK_FILES = %w[font-material-symbols.rb].freeze
        MAX_CASKS_PER_RUN = 50

        def initialize(repo_dir:, mode: nil)
          @repo_dir = repo_dir
          @mode = mode
          @existing_casks = {}
          @added_casks = {}
          @updated_casks = {}
        end

        def run
          find_existing_google_casks
          process_family_folders

          changed_casks = {}
          puts "Mode: #{@mode || "(all)"}"

          if @mode.nil? || @mode == "add"
            puts "Adding new casks..."
            changed_casks.merge!(@added_casks)
          end

          if @mode.nil? || @mode == "update"
            puts "Updating existing casks..."
            changed_casks.merge!(@updated_casks)
          end

          written_count = 0
          changed_casks.each_value do |cask|
            break if @mode && written_count >= MAX_CASKS_PER_RUN

            written_count += 1 if write_cask?(cask)
          end

          if @mode.nil? || @mode == "delete"
            puts "Deleting removed casks..."
            @existing_casks.each_value do |cask_info|
              FileUtils.rm(cask_info[:path])
              puts "Deleted: #{cask_info[:path]}"
            end
          end

          puts "Done. Written: #{written_count} casks"
        end

        private

        def find_existing_google_casks
          Dir.glob("Casks/font/**/*.rb").each do |cask_path|
            next if SKIP_CASK_FILES.include?(File.basename(cask_path))

            contents = File.read(cask_path)
            next unless contents.match?(%r{(github\.com/google/fonts|fonts\.google\.com|google\.com/fonts)})

            token = File.basename(cask_path, ".rb")
            homepage_match = contents.match(/homepage\s+(['"])(.*)(\1)\s*/)
            desc_match = contents.match(/desc\s+(['"])(.*)(\1)\s*/)

            @existing_casks[token] = {
              path:        cask_path,
              description: desc_match&.[](2),
              homepage:    homepage_match&.[](2),
            }
          end
        end

        def find_family_folders
          SUBDIRS.flat_map do |subdir|
            Dir.glob(File.join(@repo_dir, subdir, "*"))
          end
        end

        def process_family_folders
          find_family_folders.each do |family_folder|
            meta_file = File.join(family_folder, "METADATA.pb")

            cask = if File.exist?(meta_file)
              begin
                metadata_to_cask(meta_file)
              rescue => e
                warn "Error parsing #{meta_file}: #{e.message}"
                next
              end
            else
              derive_cask(family_folder)
            end

            next if SKIP_TOKENS.include?(cask.token)
            next if @added_casks.key?(cask.token) || @updated_casks.key?(cask.token)

            existing = @existing_casks.delete(cask.token)
            if existing
              cask.description = existing[:description]

              # Check if homepage is valid, keep existing if not
              if cask.homepage != existing[:homepage] && !url_exists?(cask.homepage)
                cask.homepage_override = existing[:homepage]
              end

              @updated_casks[cask.token] = cask
            else
              # Check homepage for new casks
              cask.homepage_override = cask.meta.source&.repository_url unless url_exists?(cask.homepage)

              @added_casks[cask.token] = cask
            end
          end
        end

        def metadata_to_cask(meta_file)
          folder = File.dirname(meta_file).sub("#{@repo_dir}/", "")
          content = File.read(meta_file)
          meta = MetadataParser.parse(content)

          description_path = File.join(File.dirname(meta_file), "DESCRIPTION.en_us.html")
          description = parse_description(description_path, meta.name) if File.exist?(description_path)

          FontCask.new(folder: folder, meta: meta, description: description)
        end

        def parse_description(path, font_name)
          html = File.read(path)
          # Simple HTML to text conversion (strip tags)
          text = html.gsub(/<[^>]+>/, " ").gsub(/\s+/, " ").delete('"').strip

          # Extract description after font name
          regex = /.*#{Regexp.escape(font_name)}\s+(?:.*\s+)?is(?:\s+an?|the)?\s+/i
          parts = text.split(regex, 2)
          return if parts.length <= 1

          parts[1].split(".").first&.capitalize
        end

        def derive_cask(family_folder)
          folder = family_folder.sub("#{@repo_dir}/", "")
          meta = derive_metadata(family_folder)
          early_access = File.exist?(File.join(family_folder, "EARLY_ACCESS.category"))

          FontCask.new(folder: folder, meta: meta, early_access: early_access)
        end

        def derive_metadata(family_folder)
          font_files = Dir.glob(File.join(family_folder, "*.ttf"))
          return if font_files.empty?

          name = derive_name(font_files.first)
          fonts = font_files.map { |f| MetadataParser::FontProto.new(filename: File.basename(f)) }

          MetadataParser::FamilyProto.new(name: name, fonts: fonts)
        end

        def derive_name(font_file)
          parent_dir = File.basename(File.dirname(font_file))
          basename = File.basename(font_file, ".*")
          basename = basename[0, parent_dir.length]
          basename = basename.sub(/-\w+$/, "")

          # Split CamelCase
          basename.gsub(/([A-Z])/, ' \1').strip.split.join(" ")
        end

        def url_exists?(url)
          uri = URI.parse(url)
          response = Net::HTTP.start(uri.host, uri.port, use_ssl: uri.scheme == "https") do |http|
            http.head(uri.path)
          end
          response.code.to_i != 404
        rescue
          false
        end

        def write_cask?(cask)
          path = cask.dest_path
          return false if should_skip?(path)

          content = cask.cask_content

          # Skip if content is unchanged
          return false if File.exist?(path) && File.read(path) == content

          FileUtils.mkdir_p(File.dirname(path))
          File.write(path, content)
          puts "Wrote: #{path}"
          true
        end

        def should_skip?(cask_path)
          return false unless File.exist?(cask_path)

          contents = File.read(cask_path)
          is_other_foundry = !contents.match?(%r{url ['"]https://github\.com/google/fonts})

          if is_other_foundry
            puts "Skipping (other foundry): #{cask_path}"
            true
          else
            false
          end
        end
      end
    end
  end
end
