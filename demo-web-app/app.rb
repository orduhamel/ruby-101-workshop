require "sinatra"
require "sinatra/link_header"
require "sinatra/reloader" if development?

enable :static

# Available colors
BLUE   = "blue"
GREEN  = "green"
PURPLE = "purple"
YELLOW = "yellow"

COLORS = [BLUE, GREEN, PURPLE, YELLOW]

get "/" do
  @profiles = [
    {
      "color"        => YELLOW,
      "first_name"   => "Cecile",
      "quote"        => "All you need is code",
      "picture_url"  => "https://www.cecilitse.org/images/avatar-db7c2e53.png",
      "website_url"  => "https://www.cecilitse.org/"
    }
    # TODO: gather a few profiles
  ]

  erb :index
end
