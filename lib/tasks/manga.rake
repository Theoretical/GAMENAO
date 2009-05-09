namespace :manga do
  desc "Create test environment"
  task :create => :environment do 
    Manga.create(:title => "HEAT GUY J",
		 :alternative => "ヒートガイジェイ",
		 :completed => true,
		 :active => true,
		 :author => "Chiaki Ogishima",
		 :artist => "Chiaki Ogishima",
	 	 :genre => "1,7,3")
  end

  desc "Add manga genres"
  task :update => :environment do
 
    Genre.create(:name => 'Action')
    Genre.create(:name => 'Adult')
    Genre.create(:name => 'Adventure')
    Genre.create(:name => 'Comedy')
    Genre.create(:name => 'Doujinshi')
    Genre.create(:name => 'Drama')
    Genre.create(:name => 'Ecchi')
    Genre.create(:name => 'Fantasy')
    Genre.create(:name => 'Gender Bender')
    Genre.create(:name => 'Harem')
    Genre.create(:name => 'Hentai')
    Genre.create(:name => 'Historical')
    Genre.create(:name => 'Horror')
    Genre.create(:name => 'Josei')
    Genre.create(:name => 'Lolicon')
    Genre.create(:name => 'Martial Arts')
    Genre.create(:name => 'Mature')
    Genre.create(:name => 'Mecha')
    Genre.create(:name => 'Mystery')
    Genre.create(:name => 'One Shot')
    Genre.create(:name => 'Psychological')
    Genre.create(:name => 'Romance')
    Genre.create(:name => 'School Life')
    Genre.create(:name => 'Sci-fi')
    Genre.create(:name => 'Seinen')
    Genre.create(:name => 'Shotacon')
    Genre.create(:name => 'Shoujo')
    Genre.create(:name => 'Shoujo Ai')
    Genre.create(:name => 'Shounen')
    Genre.create(:name => 'Shounen Ai')
    Genre.create(:name => 'Slice of Life')
    Genre.create(:name => 'Smut')
    Genre.create(:name => 'Sports')
    Genre.create(:name => 'Supernatural')
    Genre.create(:name => 'Tragedy')
    Genre.create(:name => 'Yaoi')
    Genre.create(:name => 'Yuri')    

  end
end
