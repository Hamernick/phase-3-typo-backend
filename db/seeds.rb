puts "🌱 Seeding data..."

Notebook.destroy_all
User.destroy_all

puts "Seeding Users..."

User.create!(name: "james cameron", bio: "i am james cameraman", email: "james.cameraman@forhire.com", picture: "https://cdn.britannica.com/84/160284-050-695B1DE3/James-Cameron-2012.jpg")
User.create!(name: "William Liu", bio: "i am william aka tha real will i am", email: "william@igottafeelin.com", picture: "https://ca.slack-edge.com/T02MD9XTF-U02SHR9GT6U-6aabe560127a-192")
User.create!(name: "Caleb Hamernick", bio: "I am half ham", email: "caleb@hamernick.com", picture: "https://ca.slack-edge.com/T02MD9XTF-U0308PFKVGX-d709024abba2-72")


puts "Seeding Notebooks..."

Notebook.create!(title: "Productivity")
Notebook.create!(title: "My Enemies")
Notebook.create!(title: "Take over the world")
Notebook.create!(title: "Book reports")

puts "Seeding Notes..."


Note.create!(title: "New Note 1", body: "Lorem Ipsum", notebook_id: Notebook.all.sample.id, user: User.all.sample)
Note.create!(title: "New Note 2", body: "Lorem Ipsum", notebook_id: Notebook.all.sample.id, user: User.all.sample)
Note.create!(title: "New Note 3", body: "Lorem Ipsum", notebook_id: Notebook.all.sample.id, user: User.all.sample)
Note.create!(title: "New Note 4", body: "Lorem Ipsum", notebook_id: Notebook.all.sample.id, user: User.all.sample)
Note.create!(title: "New Note 5", body: "Lorem Ipsum", notebook_id: Notebook.all.sample.id, user: User.all.sample)
Note.create!(title: "New Note 6", body: "Lorem Ipsum", notebook_id: Notebook.all.sample.id, user: User.all.sample)
Note.create!(title: "New Note 7", body: "Lorem Ipsum", notebook_id: Notebook.all.sample.id, user: User.all.sample)
Note.create!(title: "New Note 8", body: "Lorem Ipsum", notebook_id: Notebook.all.sample.id, user: User.all.sample)
Note.create!(title: "New Note 9", body: "Lorem Ipsum", notebook_id: Notebook.all.sample.id, user: User.all.sample)
Note.create!(title: "New Note 10", body: "Lorem Ipsum", notebook_id: Notebook.all.sample.id, user: User.all.sample)
Note.create!(title: "New Note 11", body: "Lorem Ipsum", notebook_id: Notebook.all.sample.id, user: User.all.sample)
Note.create!(title: "New Note 12", body: "Lorem Ipsum", notebook_id: Notebook.all.sample.id, user: User.all.sample)


puts "✅ Done seeding!"
