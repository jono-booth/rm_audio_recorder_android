class Recorder

  attr_accessor :on

  def initialize
    @recording = Recording.new
    @recorder = Android::Media::MediaRecorder.new
    @recorder.setAudioSource(Android::Media::MediaRecorder::AudioSource::MIC)
    @recorder.setOutputFormat(Android::Media::MediaRecorder::OutputFormat::THREE_GPP)
    @recorder.setAudioEncoder(Android::Media::MediaRecorder::OutputFormat::AMR_NB)
    @recorder.setAudioEncodingBitRate(4)
    @recorder.setAudioSamplingRate(8000)
    @recorder.setOutputFile(@recording.file_path)
  end

  def start
    @on = true
    @recorder.prepare
    @recorder.start
  end

  def stop
    @on = false
    @recorder.stop
    @recorder.release
  end

end
