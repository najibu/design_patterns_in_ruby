class FileDeleteCommand
  def initialize(path)
    @path = path
  end

  def execute
    File.delete(@path)
  end
end

fdc = FileDeleteCommand.new('foo.dat')
fdc.execute