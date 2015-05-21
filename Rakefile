# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/android'

begin
  require 'bundler'
  require 'motion-gradle'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'RM Audio Recorder'
  app.archs << 'x86'
  app.theme = '@android:style/Theme.Holo.Light'

  app.gradle do
    dependency 'com.github.markushi:circlebutton:1.1'
    dependency 'com.skyfishjy.ripplebackground:library:1.0.1'
  end
  app.permissions << 'android.permission.WRITE_EXTERNAL_STORAGE'
  app.permissions << 'android.permission.READ_EXTERNAL_STORAGE'
  app.permissions << 'android.permission.RECORD_AUDIO'
end
