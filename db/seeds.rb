ActiveRecord::Base.transaction do
  next unless Rails.env.development?

  puts "🚀 Seed started..."

  puts "* Create dev user"
  User.developer.create!(
    email_address: "developer@rubyrita.com.br",
    password: "developer@rubyrita.com.br"
  )

  puts "✅ Seed finished successfully"
end
