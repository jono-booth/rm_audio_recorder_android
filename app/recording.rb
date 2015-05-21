class Recording
  def file
    storage_directory = Android::Os::Environment.getExternalStorageDirectory
    @file ||= Java::Io::File.new storage_directory, "/recording.3gp"
  end

  def file_path
    file.getAbsolutePath
  end
end
