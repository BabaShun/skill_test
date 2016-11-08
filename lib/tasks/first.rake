namespace :first do
  desc "初期データ挿入"

  task :create => :environment do

    skills = ['Java','C','C++','C＃','PHP','Ruby','Python2','Python3','Perl','Objective-C','Swift','VB','ActionScript','R言語','Scala','Erlang','Go言語','JavaScript','HTML5+CSS3','HTML+CSS','CoffeeScript','Haml','Sass','Node.js']
    skills.each do |skill|
      SkillTag.create(name: skill)
    end
    10.times do
      User.create(username: FFaker::Name.name, email: FFaker::Internet.email, password: 'hogehoge', password_confirmation: 'hogehoge')
    end
  end
end
