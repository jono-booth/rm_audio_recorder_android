class MainActivity < Android::App::Activity
  attr_accessor :recorder

  def onCreate(savedInstanceState)
    super
    setContentView(R::Layout::Main)

    @record_button = findViewById(R::Id::Record_button)
    @record_button.onClickListener = self
    @recording = false
  end

  def onClick(view)
    @recording = !@recording
    text = @recording ? R::String::Record_button_on : R::String::Record_button_off
    @record_button.text = getString(text)
  end
end
