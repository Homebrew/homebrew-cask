# typed: true
# frozen_string_literal: true

require "fileutils"
require "pathname"
require "optparse"

DEFAULT_DIRECTORY = "Casks"
DEFAULT_MAX_FILES = 100
IGNORED_ENTRIES = [".", "..", ".DS_Store"].freeze
FILE_SUBSET = nil

options = {
  directory:   DEFAULT_DIRECTORY,
  max_files:   DEFAULT_MAX_FILES,
  file_subset: FILE_SUBSET,
}

OptionParser.new do |opts|
  opts.banner = "Usage: shard.rb [options]"

  opts.on("-d", "--directory DIRECTORY", "Specify the starting directory (default: #{DEFAULT_DIRECTORY})") do |d|
    options[:directory] = d
  end

  opts.on("-m", "--max-files MAX", Integer,
          "Specify the maximum number of files before sharding (default: #{DEFAULT_MAX_FILES})") do |m|
    options[:max_files] = m
  end

  opts.on("-s", "--subset SUBSET", Array,
          "Specify a subset of files based on initial letter (default: all files)") do |s|
    options[:file_subset] = s
  end

  opts.on("-h", "--help", "Prints this help") do
    puts opts
    exit
  end
end.parse!

def first_two_characters(file_name)
  file_name[0, 2].downcase.gsub(/[^a-z]/, "_")
end

def move_file(src, dst)
  success = system("git mv '#{src}' '#{dst}' 2>/dev/null") if src != dst
  FileUtils.mv(src, dst) if !success && src != dst
end

def distribute_files(directory, max_files, file_subset)
  new_subfolders = Hash.new { |h, k| h[k] = [] }
  should_distribute = Dir.children(directory).size > max_files

  Dir.each_child(directory) do |file_name|
    file_path = File.join(directory, file_name)
    next if !File.file?(file_path) || file_subset&.exclude?(file_name[0].downcase)

    first_two_chars = first_two_characters(file_name)

    destination_folder = if should_distribute
      File.join(directory, first_two_chars[0], first_two_chars)
    else
      File.join(directory, first_two_chars[0])
    end
    FileUtils.mkdir_p(destination_folder)
    new_subfolders[destination_folder] << file_name

    move_file(file_path, File.join(destination_folder, file_name))
  end
end

# def correct_sharding(directory, max_files, file_subset, fix: false)
#   errors = []

#   Dir.glob("#{directory}/**/*").each do |file_path|
#     next unless File.file?(file_path)

#     file_name = File.basename(file_path)
#     current_folder = File.dirname(file_path)
#     next if file_subset&.exclude?(file_name[0].downcase)

#     first_two_chars = first_two_characters(file_name)

#     should_distribute = Dir.children(directory).size > max_files

#     expected_folder = if should_distribute
#       File.join(directory, first_two_chars[0], first_two_chars)
#     else
#       File.join(directory, first_two_chars[0])
#     end

#     next if current_folder == expected_folder

#     errors << "File #{file_path} should be in #{expected_folder} but is in #{current_folder}"

#     if fix
#       FileUtils.mkdir_p(expected_folder)
#       move_file(file_path, File.join(expected_folder, file_name))
#     end
#   end

#   errors
# end

def distribute_large_subfolders(directory, max_files, file_subset = FILE_SUBSET)
  subfolder_paths = Dir.entries(directory).reject { |entry| IGNORED_ENTRIES.include? entry }

  subfolder_paths.each do |subfolder|
    subfolder_path = File.join(directory, subfolder)
    next unless File.directory?(subfolder_path)

    files_count = Dir.entries(subfolder_path).size - 2 # Exclude '.' and '..'
    next if files_count <= max_files

    distribute_files(subfolder_path, max_files, file_subset)
    FileUtils.rm_rf(subfolder_path)
  end
end

def main(directory, max_files, file_subset)
  distribute_files(directory, max_files, file_subset)
  distribute_large_subfolders(directory, max_files, file_subset)
end

main(options[:directory], options[:max_files], options[:file_subset])
