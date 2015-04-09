class Integer

  def in_words
    in_words_multi self
  end

  private

    def in_words_to9(num)
      %w( zero one two three four five six seven eight nine )[num]
    end

    def in_words_to19(num)
      if num > 9
        %w( ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen )[num % 10]
      else
        in_words_to9 num
      end
    end

    def in_words_to99(num)
      if num > 19
        result_words = %w( twenty thirty forty fifty sixty seventy eighty ninety )[num / 10 - 2]
        result_words += " " + in_words_to9(num % 10) unless (num % 10) == 0
        result_words
      else
        in_words_to19 num
      end
    end

    def in_words_to999(num)
      if num > 99
        result_words = in_words_to9(num / 100) + " hundred"
        result_words += " " + in_words_to99(num % 100) unless (num % 100) == 0
        result_words
      else
        in_words_to99 num
      end
    end

    def in_words_multi(num, m=3)
    if m >= 0
      suf = %w( thousand million billion trillion ) # start whith m = 3 = "trillion"
      suf_i = 1000 * 1000**m
      if num < suf_i
        in_words_multi(num, m - 1)
      else
        result_words = in_words_to999(num / suf_i) + " " + suf[m]
        result_words += " " + in_words_multi(num % suf_i, m - 1) unless (num % suf_i) == 0
        result_words
      end
    else
      in_words_to999 num
    end
  end
end
