require "sass"

# Sinatra actually encourages me to go monkey patch their stuff so I can
# store my sass files outside of the "views" directory. WAT

set :views, { scss: 'public/stylesheets', default: 'views' }

helpers do
  def find_template(views, name, engine, &block)
    _, folder = views.detect { |k,v| engine == Tilt[k] }
    folder ||= views[:default]
    super(folder, name, engine, &block)
  end
end
