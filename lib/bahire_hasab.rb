$HERE = File.dirname(__FILE__)

require "#{$HERE}/bahire_hasab/kemerat"
require "#{$HERE}/bahire_hasab/constants"
require "#{$HERE}/bahire_hasab/bealatna_atswamat"

module BahireHasab
  #include Kemerat
  #include Constants
  #include BealatnaAtswamat

  # This class provides the methods to get the kemer numbers used in the Bahire Hasab calculation
  # and the floating and fixed holidays of for a given Ethiopian year.

  class Abushahir
    # Gets all the Kemer (\Abushahir Arithmetic) numbers for the given year as a hash.
    # The returned hash will have values for the symbols:
    # * +ameteAlem+::  The number of years in AD + BC
    # * +meteneRabiet+:: +ameteAlem+ / 4
    # * +wengelawi+:: One of the values 'Mathewos', 'Markos', 'Lucas', or 'Yohannes'
    # * +tinteKemer+:: Returns the +tinteKemer+ for the year
    # * +tinteOn+:: Returns the value +tintekemer+ - 1
    # * +medeb+:: Returns the modulo from +ameteAlem+ / +NIUS_KEMER+
    # * +wenber+:: Returns +medeb+ - 1
    # * +abeqte+:: Returns the modulo of +wenber+ / 30 if wenber > 30 or just the value of +wenber
    # * +metq+:: Returns the +metq+ for the year
    # * +mebajaHamer+:: Returns the +mebajaHamer+ for the year
    def getKemerat year
      k = BahireHasab::Kemerat::Kemer.new
      kemerat = BahireHasab::Constants.getKemerat
      kemerat[:ameteAlem] = k.computeAmeteAlem year
      kemerat[:meteneRabiet] = k.computeMeteneRabiet year
      kemerat[:wengelawi] = k.getAmeteWongelawyan year
      kemerat[:tinteKemer] = k.computeTinteKemer year
      kemerat[:tinteOn] = k.computeTinteOn year
      kemerat[:medeb] = k.computeMedeb year
      kemerat[:wenber] = k.computeWenber year
      kemerat[:abeqte] = k.computeAbeqte year
      kemerat[:metq] = k.computeMetq year
      kemerat[:mebajaHamer] = k.computeMebajaHamer year
      return kemerat
    end

    # Gets the floating holidays for the given Ethiopian year as a hash value.
    # The returned hash will have values for the symbols:
    # * +bealeYohannes+::  The first day of the year when the new Ethiopian year and John the Baptist (Yohannes) is celebrated.
    # * +bealeMetq+:: The name and date when +bealeMetq+ occurs
    # * +nenewe+:: The name and date in Ethiopian Calendar when the Fast of Nineveh starts
    # * +abiyTsom+:: The name and date in Ethiopian Calendar when the Lent starts
    # * +debreZeit+:: The name and date in Ethiopian Calendar when it is mid Lent
    # * +hosana+:: The name and date in Ethiopian Calendar when Hosana (Palm Sunday) is celebrated
    # * +siklet+:: The name and date in Ethiopian Calendar when Good Friday is celebrated
    # * +tinsae+:: The name and date in Ethiopian Calendar when Easter is celebrated
    # * +rikbeKahnat+:: The third Wednesday after Easter
    # * +erget+:: The name and date in Ethiopian Calendar when is Ascension celebrated
    # * +bealeHamsa+:: The name and date in Ethiopian Calendar when the Pentecost is celebrated
    # * +tsomeHawaryat+:: The name and date in Ethiopian Calendar when the Fast of the Apostles starts (The Monday after the Pentecost Sunday)
    # * +tsomeDihnet+:: The name and date in Ethiopian Calendar when the Wednesdays and Fridays fast begins (The Wednesday after the Pentecost Sunday)

    def getBealat year
      b = BahireHasab::BealatnaAtswamat::Bealat.new
      bealat = BahireHasab::Constants.getBealat
      b.getBealeYohannes year
      b.getBealeMetq year
      b.getNenewe year
      b.getAbiyTsom year
      b.getDebreZeit year
      b.getHosana year
      b.getSiklet year
      b.getTinsae year
      b.getRikbeKahnat year
      b.getErget year
      b.getBealeHamsa year
      b.getTsomeHawaryat year
      b.getTsomeDihnet year
      return bealat
    end
  end
end
