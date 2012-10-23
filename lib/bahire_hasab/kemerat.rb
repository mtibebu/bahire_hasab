module BahireHasab
   module Kemerat
    class Kemer
    def computeAmeteAlem(year)
      BahireHasab::Constants::ZEMENE_FDA + year
    end

    def computeMeteneRabiet(year)
      aa = computeAmeteAlem year
      aa / 4
    end

    def computeRabietAlem(year)
      aa = computeAmeteAlem year
      mr = computeMeteneRabiet year
      mr + aa
    end

    def getAmeteWongelawyan(year)
      aa = computeAmeteAlem year
      mod = aa.modulo 4
      case mod
        when 1 then "Mathewos"
        when 2 then "Markos"
        when 3 then "Lucas"
        else "Yohannes"
      end
    end

    def computeTinteKemer(year)
      ra = computeRabietAlem year
      mod = ra.modulo 7
      mod == 0 ? 7 : mod
    end

    def computeTinteOn(year)
      tk = computeTinteKemer year
      tk - 1
    end

    def computeMedeb(year)
      aa = computeAmeteAlem year
      aa.modulo  BahireHasab::Constants::NIUS_KEMER
    end

    def computeWenber(year)
      m = computeMedeb year
      m - 1
    end

    def computeAbeqte(year)
      tmp = computeWenber(year) * 11
      if tmp > 30
        tmp.modulo 30
      else
        tmp
      end
    end

    def computeMetq(year)
        a = computeAbeqte year
        if a == 0
          return 30
        end
        tmp = computeWenber(year) * 19
        if(tmp > 30)
          tmp.modulo 30
        else
          tmp
        end
    end

    def computeMebajaHamer(year)
      bealat = BahireHasab::BealatnaAtswamat::Bealat.new
      bealeMetq = bealat.getBealeMetq year
      twsk = bealeMetq.bealElet.tewsak
      metq = computeMetq year
      tmp = metq + twsk

      if tmp > 30
        tmp - 30
      else
        tmp
      end
    end
    end
  end
end
