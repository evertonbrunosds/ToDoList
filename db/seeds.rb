p 'Iniciando ...'

def text_generator
    words = []
    500.times do
      length_word = rand(2..10)
      word = ""
      length_word.times do
        word << rand(97..122).chr
      end
      words << word
    end
    text = words.join(' ')
    return text
end

Task.delete_all

Category.delete_all

User.all.each do |user|
    15.times do
        Category.create!(
            name: "Category #{rand(10000)}",
            description: text_generator(),
            user_id: user.id
        )
    end
end

Category.all.each do |category|
    100.times do
        Task.create!(
            title: "Task #{rand(10000)}",
            description: text_generator(),
            due_date:  Date.today + rand(5..365),
            completion: rand(2) == 1,
            priority: ['low', 'medium', 'high'].sample,
            created_at: Date.today - rand(5..365),
            category_id: category.id
        )
    end
end

p 'Terminou!'