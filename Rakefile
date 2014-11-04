require 'yaml'

Rake::FileUtilsExt.verbose(false)

desc 'Install the dotfiles on your system'
task :install => :clean do
  Helpers.symlinks.each do |file, dest|
    ln_s File.expand_path(file), "#{dest}/#{File.basename(file)}"
  end
  puts "Okay, created #{Helpers.symlinks.length} symlinks."
end

desc 'Remove the dotfiles from your system'
task :clean do
  Helpers.symlinks.each do |file, dest|
    Helpers.remove "#{dest}/#{File.basename(file)}"
  end
end

module Helpers
  module_function

  def symlinks
    @symlinks ||= begin
      symlinks = {}
      YAML.load_file('symlinks.yml').each_pair do |pattern, dest|
        Dir[pattern].each do |file|
          symlinks[file] = File.expand_path(dest) if File.file?(file)
        end
      end
      symlinks
    end
  end

  def remove(path)
    return unless File.exist?(path)
    if !File.symlink?(path)
      overwrite = confirm("Overwrite #{path}?")
      unless overwrite
        @symlinks.delete_if do |file|
          File.basename(file) == File.basename(path)
        end
        return
      end
    end
    FileUtils.rm path, force: true
  end

  def confirm(message)
    print "#{message} (Y/n) "
    STDIN.gets.downcase[0] == 'y' ? true : false
  end
end
