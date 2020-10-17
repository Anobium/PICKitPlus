{
  gsub("\"_","\"",$0)
  gsub(".html","",$0)
  print $0
}