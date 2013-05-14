Speaker.seed do |s|
  s.id = 1
  s.name = "早瀬　亮/公共・宇宙事業部 公共システム第1部"
  s.description = "2011年入社 3年目。\n学生時代に超小型人工衛星の開発を行っていた経験を活かし、現在は大型衛星の地上管制ソフトウェア(解析系)の開発業務に従事。\n見た目は運動部っぽい、ピアノが趣味の文化系B型人間。"
  s.photo = File.open(File.expand_path("../public/images/chochin.png",__FILE__) ,'r') { |io| io.read }
end
