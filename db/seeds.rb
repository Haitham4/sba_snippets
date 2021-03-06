require 'pp'

pp user = User.create_with(password: 'password').find_or_create_by(email: 'user@mail.com')

languages = [
  { name: "Ruby", image_url: "http://nicholasjohnson.com/images/sections/ruby.png" },
  { name: "Erb", image_url: "https://upload.wikimedia.org/wikipedia/en/thumb/e/e9/Ruby_on_Rails.svg/791px-Ruby_on_Rails.svg.png" },
  { name: "JavaScript", image_url: "https://www.codementor.io/assets/page_img/learn-javascript.png" },
  { name: "CoffeeScript", image_url: "https://pbs.twimg.com/profile_images/557241144392708096/slQydAMv.png" },
  { name: "Html", image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/61/HTML5_logo_and_wordmark.svg/2000px-HTML5_logo_and_wordmark.svg.png" },
  { name: "Css", image_url: "http://vignette2.wikia.nocookie.net/howtoprogram/images/a/a9/CSS3.png/revision/latest?cb=20130422012035" },
  { name: "Sass", image_url: "http://sass-lang.com/assets/img/logos/logo-b6e1ef6e.svg" },
  { name: "Bash", image_url: "http://www.unixstickers.com/image/cache/data/stickers/binbash/Bash-new.sh-600x600.png" }
]

languages.each do |language|
  pp instance_variable_set("@#{language[:name].gsub(' ', '_').downcase}", Language.find_or_create_by(language))
end

snippets = [
  { code: "puts 'Hello World'", language: @ruby, user: user },
  { code: "<%= content_tag :p, 'Hello World' %>", language: @erb, user: user },
  { code: "console.log('Hello World')", language: @javascript, user: user },
  { code: "console.log 'Hello World'", language: @coffeescript, user: user },
  { code: "<p>Hello World</p>", language: @html, user: user }
]

snippets.each do |snippet|
  pp Snippet.create_with(title: 'Hello World').find_or_create_by(snippet)
end
