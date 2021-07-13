def max(array, x)
  benef = array[x..].max - array[x]
  y = array.index(array[x..].max)
  {:j1 => x, :j2 =>y, :b=>benef}
end 

def trading(tab)
  tab.map!  {|jour| max(tab, tab.index(jour))}
  [tab.max_by {|x| x[:b]}[:j1],tab.max_by {|x| x[:b]}[:j2]]
end