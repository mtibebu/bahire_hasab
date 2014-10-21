module BahireHasab
  module Constants
  ZEMENE_FDA = 5500
  NIUS_KEMER = 19
  KEMERE_TSEHAY = 28
  MAEKELAWI_KEMER = 76
  ABIY_KEMER = 532

  Elet = Struct.new :eletName, :eletNo, :tinteKemer, :tinteOn, :tewsak, :daysToNenewe
  Beal = Struct.new :bealName, :bealNo, :tewsak, :bealElet, :date, :jd

  @@eletat = {:ehud => Elet.new("Ehud", 1, 6, 5, 7, 127),
             :segno => Elet.new("Segno", 2, 7, 6, 6, 126),
             :maksegno => Elet.new("Maksegno", 3, 1, 7, 5, 125),
             :rebu => Elet.new("Rebu", 4, 2, 1, 4, 124),
             :hamus => Elet.new("Hamus", 5, 3, 2, 3, 123),
             :arb => Elet.new("Arb", 6, 4, 3, 2, 122),
             :kidamie => Elet.new("Kidamie", 7, 5, 4, 8, 128)}

  @@bealat = {:nenewe => Beal.new("Nenewe", 1, 0, nil, nil, 0),
           :abiyTsom => Beal.new("Abiy Tsom", 2, 14, nil, nil, 0),
           :debreZeit => Beal.new("Debre Zeit", 3, 11, nil, nil, 0),
           :hosana => Beal.new("Hosana", 4, 2, nil, nil, 0),
           :siklet => Beal.new("Siklet", 5, 7, nil, nil, 0),
           :tinsae => Beal.new("Tinsae", 6, 9, nil, nil, 0),
           :rikbeKahnat => Beal.new("Rikbe Kahnat", 7, 3, nil, nil, 0),
           :erget => Beal.new("Erget", 8, 18, nil, nil, 0),
           :bealeHamsa => Beal.new("Beale Hamsa", 9, 28, nil, nil, 0),
           :tsomeHawaryat => Beal.new("Tsome Hawaryat", 10, 29, nil, nil, 0),
           :tsomeDihnet => Beal.new("Tsome Dihnet", 11, 1, nil, nil, 0),
           :bealeYohannes => Beal.new("Beale Yohannes", 12, -1, nil, nil, 0),
           :bealeMetq => Beal.new("Beale Metq", 13, -1, nil, nil, 0),
           :meskel => Beal.new("Meskel", 14, -1, nil, nil, 0),
           :lidet => Beal.new("Lidet", 15, -1, nil, nil, 0),
           :timket => Beal.new("Timket", 16, -1, nil, nil, 0),
           :qanaZeGelila => Beal.new("Qana Ze Gelila", 17, -1, nil, nil, 0),
           :tsomeFilseta => Beal.new("Tsome Filseta", 18, -1, nil, nil, 0),
           :debreTabor => Beal.new("Debre Tabor", 19, -1, nil, nil, 0),
           :filseta => Beal.new("Filseta", 20, -1, nil, nil, 0)}

  @@kemerat =  {:ameteAlem=>0, :meteneRabiet=>0, :tinteKemer=>0, :medeb=>0,
              :wenber => 0, :abeqte=>0, :metq=>0, :mebajaHamer=>0,
              :tinteOn=>0, :wengelawi=>'Yohannes'}

  def self.getEletat
    @@eletat
  end

  def self.getBealat
    @@bealat
  end

  def self.getKemerat
    @@kemerat
  end
  end
end
