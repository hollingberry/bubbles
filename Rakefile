require 'yaml'

Rake::FileUtilsExt.verbose(false)

desc 'Install the dotfiles on your system'
task :install => :clean do
  symlinks.each do |file, dest|
    ln_s File.expand_path(file), "#{dest}/#{File.basename(file)}"
  end
  puts "Okay, created #{symlinks.length} symlinks."
end

desc 'Remove the dotfiles from your system'
task :clean do
  symlinks.each do |file, dest|
    wipe "#{dest}/#{File.basename(file)}"
  end
end

def files(pattern)
  Dir[pattern].select do |file|
    File.file?(file)
  end
end

def confirm(message)
  print "#{message} (Y/n) "
  STDIN.gets.downcase.start_with?('y') ? true : false
end

def symlinks
  @symlinks ||= begin
    symlinks = {}
    YAML.load_file('symlinks.yml').each do |pattern, dest|
      files(pattern).each do |file|
        symlinks[file] = File.expand_path(dest)
      end
    end
    symlinks
  end
end

def wipe(path)
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
