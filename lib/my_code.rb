def map(array)
  i=0
  out=[]
  while i< array.size
    out[i]=yield(array[i])
    i+=1
  end
  return out
end

def reduce(array,f=0)
  i=0
  total=0
  while i< array.size
    total=yield(array[i],total)
    i+=1
  end
  if total==false||total==nil
    return false
  end
  if f !=0 
    return total+f 
  else 
  return total
end
end


