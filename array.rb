class Array
  def group_numbers_by_sum_of_pairs(exp_sum)
    result = []
    tmp = {} # хэш, в ключе, которого храним желаемую пару для данного элемента
    unused = Hash.new(0) # хэш с количеством возможных использований элемента
    self.each { |x| unused[x] +=1 }
    self.each do |el|
      desired_el = exp_sum - el # желаемый элемент в пару к текущему
      if tmp.key?(el) && unused[desired_el] > 0
        result.insert(0, [desired_el, el])
        unused[desired_el] -= 1
        unused[el] -= 1
      else
        tmp[desired_el] = el #записываем недостающую разницу текщего элемента и требуемой суммы
      end
    end
    return result.sort!
  end
end