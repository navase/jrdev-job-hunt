# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

nike=Company.create({
  email: "fake@fakenike.nl",
  password: "11111111"
  })
kpn=Company.create({
  email: "kpn@fakekpn.nl",
  password: "11111111"
  })
nos=Company.create({
  email: "nos@fakenos.nl",
  password: "11111111"
  })
smartlight=Company.create({
  email: "smart@fakelight.nl",
  password: "11111111"
  })
nike_profile=CompanyProfile.create({
  name: "Nike",
  description: "Listicle street art cred pitchfork lomo, craft beer hella selvage kombucha flexitarian heirloom pork belly synth four dollar toast. Actually tilde flannel put a bird on it narwhal kinfolk. Echo park 8-bit vice, truffaut brunch ethical art party flannel mixtape gentrify yr. Synth yuccie XOXO hella PBR&B keytar. Man braid bitters trust fund hammock. Kitsch lo-fi butcher, raw denim church-key shabby chic DIY sustainable polaroid vegan locavore before they sold out chia plaid. Plaid distillery beard, shabby chic bushwick kombucha venmo wayfarers austin.",
  size: "> 100",
  salary_indication: "2200 - 2400",
  jr_sr_ratio: "4 / 10",
  company_id: nike.id
  })
kpn_profile=CompanyProfile.create({
  name: "KPN",
  description: "Put a bird on it mumblecore craft beer, green juice cliche hammock gluten-free keytar distillery XOXO post-ironic aesthetic. 8-bit PBR&B slow-carb fashion axe. Offal seitan flexitarian PBR&B franzen. Offal narwhal meditation crucifix, put a bird on it health goth wolf. Heirloom ramps trust fund, put a bird on it 90's kogi fashion axe paleo 3 wolf moon stumptown godard leggings wayfarers tousled authentic. Kombucha four dollar toast banh mi mixtape trust fund everyday carry, vice affogato. Try-hard artisan irony, deep v twee kogi humblebrag fap hoodie pop-up.",
  size: "> 100",
  salary_indication: "2400 - 2600",
  jr_sr_ratio: "6 / 10",
  company_id: kpn.id
  })
nos_profile=CompanyProfile.create({
  name: "NOS",
  description: "Celiac chambray banjo +1 waistcoat squid. Beard migas food truck, affogato marfa portland disrupt biodiesel microdosing heirloom art party before they sold out forage. Quinoa intelligentsia PBR&B irony raw denim, before they sold out venmo sartorial chillwave microdosing whatever try-hard seitan. Quinoa VHS ugh butcher kale chips direct trade. Drinking vinegar four dollar toast lomo beard hoodie kickstarter, fanny pack master cleanse meditation poutine celiac you probably haven't heard of them jean shorts tilde tote bag. Banh mi gentrify chia, 3 wolf moon brunch mixtape authentic squid tumblr craft beer. Brooklyn retro polaroid hashtag.",
  size: "10 - 50",
  salary_indication: "2000 - 2200",
  jr_sr_ratio: "4 / 6",
  company_id: nos.id
  })
smartlight_profile=CompanyProfile.create({
  name: "Smart Light",
  description: "Franzen scenester leggings commodo master cleanse, seitan mixtape. Kinfolk art party kickstarter biodiesel excepteur nisi, mollit leggings cupidatat fugiat gentrify velit tote bag et. Echo park pork belly tousled pitchfork, viral fanny pack VHS selfies. Deserunt mixtape aute semiotics, dreamcatcher organic occupy franzen tilde est fingerstache post-ironic deep v pickled salvia. Pariatur retro incididunt asymmetrical hashtag health goth. Health goth tote bag blog hoodie. Nisi irony tempor brooklyn locavore.",
  size: "0 - 10",
  salary_indication: "> 2000",
  jr_sr_ratio: "1 / 3",
  company_id: smartlight.id
  })
