class Player
  def onClick(view)
    recording = Recording.new
    @player = Android::Media::MediaPlayer.new
    @player.setDataSource(recording.file_path)
    @player.prepare
    @player.start
  end
end
