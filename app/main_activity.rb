class MainActivity < Android::App::Activity
  attr_accessor :recorder

  def onCreate(savedInstanceState)
    super
    setContentView(R::Layout::Main)

    @rippleBackground = findViewById(R::Id::Content)

    @record_button = findViewById(R::Id::Record_button)
    @stop_button = findViewById(R::Id::Stop_button)

    @record_button.onClickListener = @stop_button.onClickListener = self
    @recording = false
  end

  def onClick(view)
    @recording = !@recording
    if @recording
      start_recording
    else
      stop_recording
    end
  end

  def start_recording
    @record_button.setVisibility(4)
    @stop_button.setVisibility(0)

    @rippleBackground.startRippleAnimation
  end

  def stop_recording
    @stop_button.setVisibility(4)
    @record_button.setVisibility(0)

    @rippleBackground.stopRippleAnimation
  end
end
