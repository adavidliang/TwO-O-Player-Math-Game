def get_question(id)

  @questions.each {|question|
    if(question[:id] == id)
      p "question is #{question[:question]}"
    end

  }
  
end


def random_id(int)
  # i = 0
  # while i < 3
  #   i += 1
  # end
    p Random.rand(int)
    
end

