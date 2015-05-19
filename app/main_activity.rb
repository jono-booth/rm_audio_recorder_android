class MainActivity < Android::App::Activity
  attr_accessor :recorder

  def onCreate(savedInstanceState)
    super
    setContentView(R::Layout::Main)

    @record_button = findViewById(R::Id::Record_button)
    @record_button.onClickListener = self
  end

  def onClick(view)
    @recorder = true
    p 'record pressed'
  end
end
