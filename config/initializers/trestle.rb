Trestle.configure do |config|
  config.hook("javascripts") do
    javascript_include_tag('trestle-turbo_scopes', data: { turbolinks_track: 'reload', turbo_track_reload: true })
  end
end
