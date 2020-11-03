require(downloader)
my.path="/pfs/out"

zipdir1 <- "https://www.ebi.ac.uk/arrayexpress/files/E-MEXP-2458/E-MEXP-2458.raw.1.zip"
zipdir2 <- "https://www.ebi.ac.uk/arrayexpress/files/E-MEXP-2458/E-MEXP-2458.raw.2.zip"
dir3 <- "https://www.ebi.ac.uk/arrayexpress/files/E-MEXP-2458/E-MEXP-2458.sdrf.txt"

#require(R.utils) || stop("Library R.utils is not available!")

dir.create(file.path(my.path, "dwl"), showWarnings=FALSE, recursive=TRUE)
dir.create(file.path(my.path, "raw"), showWarnings=FALSE, recursive=TRUE)

dwl.status1 <- download(zipdir1, destfile=file.path(my.path, "dwl", "E-MEXP-2458.raw.1.zip"))
dwl.status2 <- download(zipdir1, destfile=file.path(my.path, "dwl", "E-MEXP-2458.raw.2.zip"))
dwl.status3 <- download(dir3, destfile=file.path(my.path, "raw", "E-MEXP-2458.sdrf.txt"))
                                                          
unzip(file.path(my.path, "dwl", "E-MEXP-2458.raw.1.zip"), exdir=file.path(my.path, "raw"))
unzip(file.path(my.path, "dwl", "E-MEXP-2458.raw.2.zip"), exdir=file.path(my.path, "raw"))
                                                                                     
unlink(file.path(my.path, "dwl"), recursive=T)
