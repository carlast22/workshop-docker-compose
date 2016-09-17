require "cuba"
require "cuba/render"

Cuba.plugin Cuba::Render

Cuba.define do
  on "lugares/:place" do |place|
    res.write(view("home", place: place))
  end
end


