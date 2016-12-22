require 'finder'
require_relative './data_source'
require_relative './backup'
require_relative '../interpreter/all'
require_relative '../interpreter/file_name'

def backup(directory, find_expression=All.new)
  Backup.instance.data_source = backup_directory
end

def interval(minutes)
  backup.instance.interval = minutes
end

def file_name(pattern)
  FileName.new(pattern)
end

eval(File.read('backup.pr'))
Backup.instance.run