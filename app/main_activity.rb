class MainActivity < Android::App::Activity

  def onCreate(savedInstanceState)
    super
    setContentView(R::Layout::Main)

    @record_button = findViewById(R::Id::Record_button)
    @stop_button = findViewById(R::Id::Stop_button)
    @record_button.onClickListener = @stop_button.onClickListener = self

    @play_button = findViewById(R::Id::Play_button)
    @play_button.onClickListener = Player.new
    @ripple_background = findViewById(R::Id::Content)

    @view = Android::View::View
  end

  def onClick(view)
    if @recorder
      @recorder.stop
      @recorder = nil
      stop_recording
    else
      @recorder = Recorder.new
      @recorder.start
      start_recording
    end
  end

  def start_recording
    @record_button.setVisibility(@view::GONE)
    @stop_button.setVisibility(@view::VISIBLE)
    @ripple_background.startRippleAnimation
  end

  def stop_recording
    @stop_button.setVisibility(@view::GONE)
    @record_button.setVisibility(@view::VISIBLE)
    @ripple_background.stopRippleAnimation
  end

  def play_recording
    @recording = Recording.new
    @recording.play
  end

end
