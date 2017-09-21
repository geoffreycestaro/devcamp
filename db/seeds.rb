10.times do |blog|
    Blog.create!(
        title: "My Blog Post #{blog}",
        body: "Simon is a coffee lover, former agency digital strategist, and Content Marketing Lead. When he isn’t hustling at HQ, you can most likely find him dining at restaurants across the city or brushing up on the latest design trends. Nick is a developer, tech enthusiast, and UX lover. He's spent the last 10 years working in the software industry, with a specialized focus on development. He counts advertising, psychology, and cinema among his myriad interests."
        )
end

puts "10 blog posts created"

5.times do |skill|
    Skill.create!(
        title: "Rails #{skill}",
        percent_utilized: 15
        )
end

puts "5 skills created"

9.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio title: #{portfolio_item}",
        subtitle: "My great service",
        body: "James is the founder of Shopify Expert agency OnlyGrowth, which helps Shopify merchants with conversion optimization and email marketing. James also runs Agency Blueprint, a mentorship program for growing Shopify Partners and ecommerce agencies.",
        main_image: "http://via.placeholder.com/600x400",
        thumb_image: "http://via.placeholder.com/350x200"
        )
    end
    
puts "9 portfolio items created"