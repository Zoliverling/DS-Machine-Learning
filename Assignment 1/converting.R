load(url('https://biostat.app.vumc.org/wiki/pub/Main/CourseDSI5640/ESL.mixture.rda'))
dat <- ESL.mixture

if (!dir.exists("./CSVs/")){
  dir.create("./CSVs")
}
names(dat) <- make.names(names(dat))

for (name in names(dat)){
  file_path <- paste0("./CSVs/", name, ".csv")
  
  write.csv(dat[[name]], file_path, row.names = FALSE)
}