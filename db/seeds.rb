ActiveRecord::Base.transaction do
  next unless Rails.env.development?

  puts "🚀 Seed started..."

  puts "* Create dev user"
  User.developer.create!(
    email_address: "developer@rubyrita.com.br",
    password: "developer@rubyrita.com.br"
  )

  puts "* Create article categories"
  category = ArticleCategory.create!(title: "Ruby")

  puts "* Create article categories"
  Article.create!(
    category:,
    title: "Dois anos de Rails: minhas gems, meus padrões, meus erros",
    content: File.read(Rails.root.join("db/seeds/talk.md")),
    publish_date: "2025-05-28 19:00:00"
  )
  Article.create!(
    category:,
    title: "Rubyrita",
    content: File.read(Rails.root.join("db/seeds/rubyrita.md")),
    publish_date: "2025-05-28 22:00:00"
  )

  puts "✅ Seed finished successfully"
end
