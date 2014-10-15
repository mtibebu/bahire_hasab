module BahireHasab
  module BealatnaAtswamat
  class Bealat
    def initialize
      @bealat = Constants.getBealat
      @eletat = Constants.getEletat
    end

    def getBealeYohannes year
      k = BahireHasab::Kemerat::Kemer.new
      elet = nil

      tk = k.computeTinteKemer year
      @eletat.each_value{|v| if (v.tinteKemer == tk) then elet = v end}
      beal = @bealat[:bealeYohannes]
      beal[:bealElet] = elet
      beal[:jd] = 1
      beal[:date] = "#{year}-1-1"
      return beal
    end

    def getBealeMetq year
      k = BahireHasab::Kemerat::Kemer.new
      beal = @bealat[:bealeMetq]
      metq = k.computeMetq year
      jd = 0
      if (metq >= 2 && metq <= 13)
        jd = metq + 30
      end
      if(metq >= 15)
        jd = metq
      end
      beal[:bealElet] = getEletLeAmetuQen year, jd
      beal[:jd] = jd
      beal[:date] = getEthDateFromDays year, jd
      return beal
    end

    def getNenewe year
      beal = @bealat[:nenewe]
      bealeMetq = getBealeMetq year
      jd = bealeMetq.jd + bealeMetq.bealElet.daysToNenewe
      beal[:jd] = jd
      beal[:date] = getEthDateFromDays year, jd
      beal[:bealElet] = getEletLeAmetuQen year, jd
      return beal
    end

    def getAbiyTsom year
      beal = @bealat[:abiyTsom]
      nenewe = getNenewe year
      jd = nenewe.jd + 14
      beal.jd = jd
      beal.date = getEthDateFromDays year, jd
      beal.bealElet = getEletLeAmetuQen year, jd
      return beal
    end

    def getDebreZeit year
      beal = @bealat[:debreZeit]
      nenewe = getNenewe year
      jd = nenewe.jd + 41
      beal.jd = jd
      beal.date = getEthDateFromDays year, jd
      beal.bealElet = getEletLeAmetuQen year, jd
      return beal
    end

    def getHosana year
      beal = @bealat[:hosana]
      nenewe = getNenewe year
      jd = nenewe.jd + 62
      beal.jd = jd
      beal.date = getEthDateFromDays year, jd
      beal.bealElet = getEletLeAmetuQen year, jd
      return beal
    end

    def getSiklet year
      beal = @bealat[:siklet]
      nenewe = getNenewe year
      jd = nenewe.jd + 67
      beal.jd = jd
      beal.date = getEthDateFromDays year, jd
      beal.bealElet = getEletLeAmetuQen year, jd
      return beal
    end

    def getTinsae year
      beal = @bealat[:tinsae]
      nenewe = getNenewe year
      jd = nenewe.jd + 69
      beal.jd = jd
      beal.date = getEthDateFromDays year, jd
      beal.bealElet = getEletLeAmetuQen year, jd
      return beal
    end

    def getRikbeKahnat year
      beal = @bealat[:rikbeKahnat]
      nenewe = getNenewe year
      jd = nenewe.jd + 93
      beal.jd = jd
      beal.date = getEthDateFromDays year, jd
      beal.bealElet = getEletLeAmetuQen year, jd
      return beal
    end

    def getErget year
      beal = @bealat[:erget]
      nenewe = getNenewe year
      jd = nenewe.jd + 108
      beal.jd = jd
      beal.date = getEthDateFromDays year, jd
      beal.bealElet = getEletLeAmetuQen year, jd
      return beal
    end

    def getBealeHamsa year
      beal = @bealat[:bealeHamsa]
      nenewe = getNenewe year
      jd = nenewe.jd + 118
      beal.jd = jd
      beal.date = getEthDateFromDays year, jd
      beal.bealElet = getEletLeAmetuQen year, jd
      return beal
    end

    def getTsomeHawaryat year
      beal = @bealat[:tsomeHawaryat]
      nenewe = getNenewe year
      jd = nenewe.jd + 119
      beal.jd = jd
      beal.date = getEthDateFromDays year, jd
      beal.bealElet = getEletLeAmetuQen year, jd
      return beal
    end

    def getTsomeDihnet year
      beal = @bealat[:tsomeDihnet]
      nenewe = getNenewe year
      jd = nenewe.jd + 121
      beal.jd = jd
      beal.date = getEthDateFromDays year, jd
      beal.bealElet = getEletLeAmetuQen year, jd
      return beal
    end

    private
    def getEletLeAmetuQen year, kenat
      bYoh = getBealeYohannes year
      tinteElet = bYoh[:bealElet]
      tinteEletNo = tinteElet.eletNo
      eletNo = kenat - (kenat / 7) * 7
      if eletNo == 0
        if tinteEletNo == 1
          eletNo = 6
        elsif tinteEletNo == 2
          eletNo = 7
        else
          eletNo = tinteEletNo - 2
        end
      else
        eletNo = eletNo + tinteEletNo - 2
      end
      eletNo = eletNo + 1
      if(eletNo > 7) then eletNo = eletNo % 7 end
      elet = nil
      @eletat.each{|k,v|  if v[:eletNo] == eletNo then elet = @eletat[k] end }
      return elet
    end

    def getEthDateFromDays year, kenat
      mod = kenat.modulo 30
      month = mod == 0 ? kenat / 30 : kenat / 30 + 1
      day = mod == 0 ? 30 : kenat.modulo(30)
      return "#{year}-#{month}-#{day}"
    end
  end
  end
end
