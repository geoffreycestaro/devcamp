3.times do |topic|
    Topic.create!(title: "Topic #{topic}"
        )
end

puts "3 Topics created"

10.times do |blog|
    Blog.create!(
        title: "My Blog Post #{blog}",
        body: "Simon is a coffee lover, former agency digital strategist, and Content Marketing Lead. When he isn’t hustling at HQ, you can most likely find him dining at restaurants across the city or brushing up on the latest design trends. Nick is a developer, tech enthusiast, and UX lover. He's spent the last 10 years working in the software industry, with a specialized focus on development. He counts advertising, psychology, and cinema among his myriad interests.",
        topic_id: Topic.last.id
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

8.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio title: #{portfolio_item}",
        subtitle: "Ruby on Rails",
        body: "Simon is a coffee lover, former agency digital strategist, and Content Marketing Lead. When he isn’t hustling at HQ, you can most likely find him dining at restaurants across the city or brushing up on the latest design trends. Nick is a developer, tech enthusiast, and UX lover. He's spent the last 10 years working in the software industry, with a specialized focus on development. He counts advertising, psychology, and cinema among his myriad interests.",
        main_image: "https://via.placeholder.com/216x280",
        thumb_image: "https://via.placeholder.com/108x140"
        )
    end

1.times do |portfolio_item|
Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Angular",
    body: "Simon is a coffee lover, former agency digital strategist, and Content Marketing Lead. When he isn’t hustling at HQ, you can most likely find him dining at restaurants across the city or brushing up on the latest design trends. Nick is a developer, tech enthusiast, and UX lover. He's spent the last 10 years working in the software industry, with a specialized focus on development. He counts advertising, psychology, and cinema among his myriad interests.",
    main_image: "https://via.placeholder.com/216x280",
    thumb_image: "https://via.placeholder.com/108x140"
    )
end

puts "9 portfolio items created"

3.times do |technology|
        Portfolio.last.technologies.create!(
            name: "Technology #{technology}"
        )
end

puts "3 technology items created"