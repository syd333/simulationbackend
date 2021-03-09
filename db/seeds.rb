# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Block.destroy_all
Channel.destroy_all
User.destroy_all

user01 = User.create(name: "I sold my soul")
user02 = User.create(name: "Tania Tanme")
user03 = User.create(name: "Pancho Blood")
user04 = User.create(name: "Sloane Purity")
user05 = User.create(name: "Rocco Hunt")

channel01 = Channel.create(title: "Punk Navigation")
channel02 = Channel.create(title: "idx notebook")
channel03 = Channel.create(title: "skincare")
channel04 = Channel.create(title: "TNN Resources")
channel05 = Channel.create(title: "visual treatments")

block01 = Block.create(title: "Do you see any Teletubbies in here?", description: "No? Well, that's what you see at a toy store. And you must think you're in a toy store, 
because you're here shopping for an infant named Jeb.", user_id: user01.id, channel_id: channel05.id)

block02 = Block.create(title: "it's a revolution", description: "The path of the righteous man is beset on all sides 
by the iniquities of the selfish and the tyranny of evil men.", user_id: user03.id, channel_id: channel03.id)

block03 = Block.create(title: "shepherds the weak through the valley of darkness", description: "I am trying to experiment with being comfortable with the unknown. ", user_id: user02.id, channel_id: channel02.id)

block04 = Block.create(title: "keep your peace", description: "its the most expensive free thing", user_id: user05.id, channel_id: channel01.id)

block05 = Block.create(title: "snoop doggie dog and dr dre is at ya door", description: "rap is life", user_id: user04.id, channel_id: channel05.id)

block06 = Block.create(title: "days are numbered", description: "If you’re not ready to die for it, put the word ‘freedom’ out of your vocabulary.", user_id: user02.id, channel_id: channel03.id)

block07 = Block.create(title: "a truth to be untold", description: "writings for my first draft", user_id: user04.id, channel_id: channel01.id)

block08 = Block.create(title: "logo collections", description: "visual indentity class", user_id: user01.id, channel_id: channel05.id)

block09 = Block.create(title: "inspiration", description: "the world I want to create for myself is not in reality", user_id: user04.id, channel_id: channel02.id)

block10 = Block.create(title: "AM routine", description: "things I used in the AM for skin...", user_id: user03.id, channel_id: channel03.id)

block11 = Block.create(title: "PM routine", description: "things I used in the PM for skin...", user_id: user03.id, channel_id: channel03.id)
