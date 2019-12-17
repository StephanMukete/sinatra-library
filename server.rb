require 'sinatra'
require 'uri'
require 'net/http'
require 'openssl'
require 'json'
require "./class.rb"

cookie1 = Cookie.new("Chocolate Chip", "$3", "https://images-gmi-pmc.edge-generalmills.com/087d17eb-500e-4b26-abd1-4f9ffa96a2c6.jpg");
cookie2 = Cookie.new("Smores", "$4", "https://www.handletheheat.com/wp-content/uploads/2014/10/Peanut-Butter-Chocolate-Chip-Cookies-SQUARE-550x550.jpg")
cookie3 = Cookie.new("Vanilla Cloud", "$3.80", "https://i2.wp.com/www.livewellbakeoften.com/wp-content/uploads/2019/07/Thumbprint-Cookies-10-3.jpg?resize=745%2C1118&ssl=1")
cookie4 = Cookie.new("Peanutbutter", "$3.5", "https://cookingwithkarli.com/wp-content/uploads/2018/12/twix-cookies-10-720x720.jpg")

cake1  = Cake.new("Vegan Muffin", "$1.2", "https://livforcake.com/wp-content/uploads/2017/07/black-forest-cake-thumb.jpg")
cake2  = Cake.new("Triple Chocolate", "$2.5", "https://sugargeekshow.com/wp-content/uploads/2019/04/banana-split-cake-featured1.jpg")
cake3  = Cake.new("Triple Chocolate", "$120", "https://hips.hearstapps.com/vidthumb/images/carrot-cake-horozontal-1520010595.jpg")
cake4  = Cake.new("Oatmeal Muffin", "$2", "https://www.tasteofhome.com/wp-content/uploads/2018/05/Unicorn-Cake_EXPS_HCA18_223966_D02_22_2b.jpg")


muffin1  = Cake.new("Double Chocolate", "$122", "https://www.rockrecipes.com/wp-content/uploads/2008/03/Sweet-Potato-Spice-Muffins-square-cropped-featured-image.jpg")
muffin2 = Cake.new("Triple Chocolate", "$114", "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/chocolate-chip-muffins-horizontal-1545482673.png")
muffin3 = Cake.new("Triple Vanilla", "$139", 'https://bakingamoment.com/wp-content/uploads/2014/05/IMG_7457-blueberry-muffin-recipe-square.jpg')
muffin4 = Cake.new("Lava Chocolate", "$128", "https://www.pumpkinnspice.com/wp-content/uploads/2019/06/apple-cinnamon-muffins-4.jpg")
get '/' do
  @header = "OUR COOKIES"
  @muffins = [muffin1, muffin2, muffin3, muffin4]
  @cookies = [cookie1, cookie2, cookie3, cookie4]
  @cakes = [cake1, cake2, cake3, cake4]
  @output = @cookies
# url = URI("https://community-open-weather-map.p.rapidapi.com/find?type=link%252C%20accurate&units=imperial%252C%20metric&q=Bronx")
#
# http = Net::HTTP.new(url.host, url.port)
# http.use_ssl = true
# http.verify_mode = OpenSSL::SSL::VERIFY_NONE
#
# request = Net::HTTP::Get.new(url)
# request["x-rapidapi-host"] = 'community-open-weather-map.p.rapidapi.com'
# request["x-rapidapi-key"] = 'f4e43664dbmshebeb71cc176c017p1dd944jsn64ac3e13994f'
#
# response = http.request(request)
# @temp= JSON.parse(response.body)["list"][1]["main"]["temp"]
# @wind= JSON.parse(response.body)["list"][1]["wind"]["speed"]
# @rain= JSON.parse(response.body)["list"][1]["weather"][0]["description"]
# @c = 45
# @b = "hi: " + @c.to_s
# puts @a
# @weather = [@temp, @wind, @rain ]
@weather = [3, 3, 5 ]
erb :index
end


get '/cookies' do
    @header = "OUR COOKIES"
    @cookies = [cookie1, cookie2, cookie3, cookie4]
    @output = @cookies
    erb :cookies

 end

 get '/cake' do
   @header = "OUR CAKES"

   @cakes = [cake1, cake2, cake3, cake4]
   @output=@cakes
   erb :cake
end


get '/muffin' do
   @header = "OUR MUFFINS"
   @muffins = [muffin1, muffin2, muffin3, muffin4]
   @output=@muffins
   erb :muffin
end
