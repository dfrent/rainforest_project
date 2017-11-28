
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
water_bottle = Product.create! name: 'water bottle', description: 'holds various liquids', price: 50000

ping_pong_ball = Product.create! name: 'ping pong balls', description:'fun for the whole family', price: 60000

pen_paper_bundle = Product.create! name: 'pen & paper bundle', description: 'allows for various forms for expression', price: 900000

Review.create review_text: "It holds my liquid just fine.", product: water_bottle

Review.create review_text: "It is a ball!", product: ping_pong_ball

Review.create review_text: "This is great to write on.", product: pen_paper_bundle

Review.create review_text: "I wasn't a huge fan of this water bottle.", product: water_bottle

Review.create review_text: "This ball doesn't even bounce!", product: ping_pong_ball

Review.create review_text: "My paper lit on fire. How can I get a refund?", product: pen_paper_bundle
