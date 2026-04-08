User.destroy_all
Gossip.destroy_all

user1 = User.create!(first_name: "Elhadj", last_name: "Dicko", age: 25)
user2 = User.create!(first_name: "Fatou", last_name: "Diallo", age: 22)

Gossip.create!(title: "Scandale au bureau !", content: "Quelqu'un a mangé le sandwich de tout le monde...", author_id: user1.id)
Gossip.create!(title: "Surprise party ratée", content: "Tout le monde était au courant sauf l'intéressé.", author_id: user2.id)
Gossip.create!(title: "Le prof était en retard", content: "35 minutes de retard, un record historique.", author_id: user1.id)
